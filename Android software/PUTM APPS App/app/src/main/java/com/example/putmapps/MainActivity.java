package com.example.putmapps;

import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;

import android.graphics.Color;
import android.os.Bundle;
import android.os.Environment;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

import com.example.putmapps.bluetooth.Bluetooth;
import com.google.android.material.slider.Slider;
import com.jjoe64.graphview.GraphView;
import com.jjoe64.graphview.series.DataPoint;
import com.jjoe64.graphview.series.LineGraphSeries;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity {

    ImageButton connectButton;

    Button program1Button;
    Button program2Button;
    Button program3Button;
    Button saveToCSVButton;

    Timer timer;

    private LineGraphSeries<DataPoint> series1;
    private LineGraphSeries<DataPoint> series2;

    private double X = 0;
    private int Y1 = 0;
    private int Y2 = 0;
    private int dX = 90;

    ArrayList<Object> voltage1 = new ArrayList<>();
    ArrayList<Object> voltage2 = new ArrayList<>();
    ArrayList<Object> time = new ArrayList<>();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Bluetooth bluetooth = new Bluetooth();

        connectButton = findViewById(R.id.connectbutton);

        program1Button = findViewById(R.id.program1);
        program2Button = findViewById(R.id.program2);
        program3Button = findViewById(R.id.program3);

        saveToCSVButton = findViewById(R.id.savecsv);

        TextView voltage1ValueText = findViewById(R.id.voltage1);
        TextView voltage2ValueText = findViewById(R.id.voltage2);

        TextView isConnectedText = findViewById(R.id.connectedtext);

        Slider slider = findViewById(R.id.continuousslider);

        Slider.OnSliderTouchListener seekBarChangeListener = new Slider.OnSliderTouchListener(){

            @Override
            public void onStartTrackingTouch(@NonNull Slider slider) {

            }

            @Override
            public void onStopTrackingTouch(@NonNull Slider slider) {
                dX = (int) slider.getValue();
                bluetooth.SendText(String.valueOf((int) slider.getValue() / 10));
            }
        };

        slider.addOnSliderTouchListener(seekBarChangeListener);


        connectButton.setOnClickListener(v -> {
            bluetooth.connect("98:D3:11:FC:68:AE HC-05");

            if (bluetooth.IsConnected()){
                isConnectedText.setText("Connected");
                isConnectedText.setBackgroundColor(getResources().getColor(android.R.color.holo_green_dark));
            } else {
                isConnectedText.setText("Disconnected");
                isConnectedText.setBackgroundColor(getResources().getColor(android.R.color.holo_red_dark));
            }
        });

        program1Button.setOnClickListener(v -> {
            bluetooth.SendText("a");
        });

        program2Button.setOnClickListener(v -> {
            bluetooth.SendText("b");
        });

        program3Button.setOnClickListener(v -> {
            bluetooth.SendText("c");
        });

        saveToCSVButton.setOnClickListener(v -> {
            writeFile(voltage1.toString().replaceAll("\\[|\\]",""), false);
            writeFile("\n", true);
            writeFile(voltage2.toString().replaceAll("\\[|\\]",""), true);
            writeFile("\n", true);
            writeFile(time.toString().replaceAll("\\[|\\]",""), true);
            voltage1.clear();
            voltage2.clear();
            time.clear();
            Toast.makeText(getApplicationContext(), "CSV saved to " + MainActivity.this.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS) + "/data.csv", Toast.LENGTH_SHORT).show();
        });

        GraphView graph = (GraphView) findViewById(R.id.graph);

        series1 = new LineGraphSeries<>();
        graph.addSeries(series1);
        series1.setColor(Color.RED);

        series2 = new LineGraphSeries<>();
        graph.addSeries(series2);
        series2.setColor(Color.GREEN);

        graph.getViewport().setYAxisBoundsManual(true);
        graph.getViewport().setMinY(0);
        graph.getViewport().setMaxY(5);

        graph.getViewport().setXAxisBoundsManual(true);
        graph.getViewport().setMinX(0);
        graph.getViewport().setMaxX(20);

        graph.getViewport().setScalable(false);
        graph.getViewport().setScrollable(true);

        graph.getGridLabelRenderer().setNumHorizontalLabels(5);
        graph.getGridLabelRenderer().setNumVerticalLabels(6);

        //Timer Event
        timer = new Timer();
        timer.scheduleAtFixedRate(new TimerTask() {

                                      @Override
                                      public void run() {

                                          if (bluetooth.IsConnected()) {
                                              if (bluetooth.BytesAvailableToReceive() > 0) {
                                                  Y1 = bluetooth.read(2)[0] & 255;
                                                  Y2 = bluetooth.read(2)[1] & 255;

                                                  X = (X + dX * 0.002);

                                                  voltage1.add(Math.round(((double) Y1 / 51) * 100000d) / 100000d);
                                                  voltage2.add(Math.round(((double) Y2 / 51) * 100000d) / 100000d);
                                                  time.add(X);
                                                  
                                                  runOnUiThread((Runnable) () -> {

                                                      voltage1ValueText.setText(String.valueOf(Math.round(((double) Y1 / 51) * 100000d) / 100000d));
                                                      voltage2ValueText.setText(String.valueOf(Math.round(((double) Y2 / 51) * 100000d) / 100000d));

                                                      series1.appendData(new DataPoint(X, (double) Y1 / 51), true, 400);
                                                      series2.appendData(new DataPoint(X, (double) Y2 / 51), true, 400);

                                                      graph.onDataChanged(true, true);

                                                  });
                                              }
                                          }
                                      }
                                  },
                0, 50);
    }

    public void writeFile(String text, boolean append) {

        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS) + "/data.csv", append);
            fileOutputStream.write(text.getBytes());
            fileOutputStream.close();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String readFile() {
        try {
            FileInputStream fileInputStream = new FileInputStream(this.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS) + "/data.csv");
            InputStreamReader inputStreamReader = new InputStreamReader(fileInputStream);

            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
            StringBuilder stringBuffer = new StringBuilder();

            String lines;
            while ((lines = bufferedReader.readLine()) != null) {
                stringBuffer.append(lines).append("\n");
            }

            return stringBuffer.toString();

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return null;
    }

    

}