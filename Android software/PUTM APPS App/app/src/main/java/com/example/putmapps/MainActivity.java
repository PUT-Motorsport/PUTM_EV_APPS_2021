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
import com.jjoe64.graphview.Viewport;
import com.jjoe64.graphview.series.DataPoint;
import com.jjoe64.graphview.series.LineGraphSeries;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Timer;
import java.util.TimerTask;

public class MainActivity extends AppCompatActivity {

    ImageButton connectButton;

    Button program1Button;
    Button program2Button;
    Button program3Button;
    Button saveToCSVButton;

    Timer timer;

    private LineGraphSeries<DataPoint> series;

    private double X = 0;
    private int Y = 0;

    ArrayList<Object> voltage = new ArrayList<>();
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

        TextView voltageValueText = findViewById(R.id.voltage);

        TextView isConnectedText = findViewById(R.id.connectedtext);

        Slider slider = findViewById(R.id.continuousslider);

        Slider.OnSliderTouchListener seekBarChangeListener = new Slider.OnSliderTouchListener(){

            @Override
            public void onStartTrackingTouch(@NonNull Slider slider) {

            }

            @Override
            public void onStopTrackingTouch(@NonNull Slider slider) {
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
            writeFile(voltage.toString().replaceAll("\\[|\\]",""), false);
            writeFile("\n", true);
            writeFile(time.toString().replaceAll("\\[|\\]",""), true);
            voltage.clear();
            Toast.makeText(getApplicationContext(), "CSV saved to " + MainActivity.this.getExternalFilesDir(Environment.DIRECTORY_DOWNLOADS) + "/data.csv", Toast.LENGTH_SHORT).show();
        });

        GraphView graph = (GraphView) findViewById(R.id.graph);
        series = new LineGraphSeries<>();
        graph.addSeries(series);
        Viewport viewport = graph.getViewport();
        viewport.setYAxisBoundsManual(true);
        viewport.setMinY(0);
        viewport.setMaxY(5);
        viewport.setScrollable(true);
        viewport.setXAxisBoundsManual(true);
        viewport.setMinX(0);
        viewport.setMaxX(20);
        viewport.setScalable(false);

        //Timer Event
        timer = new Timer();
        timer.scheduleAtFixedRate(new TimerTask() {

                                      @Override
                                      public void run() {
                                          runOnUiThread((Runnable) () -> {

                                              if (bluetooth.IsConnected()) {

                                                  if (bluetooth.BytesAvailableToReceive() > 0) {
                                                      Y = bluetooth.ReceiveUnsigned1ByteNumber();
                                                      voltageValueText.setText(String.valueOf(Math.round(((double) Y / 51) * 10000000d) / 10000000d));
                                                      voltage.add(Math.round(((double) Y / 51) * 10000000d) / 10000000d);

                                                  }

                                                  X = (X + 0.025);
                                                  time.add(X);
                                                  series.appendData(new DataPoint(X, (double) Y / 51), true, 3000);
                                                  graph.onDataChanged(true, true);
                                              }
                                          });
                                      }
                                  },
                0, 25);
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