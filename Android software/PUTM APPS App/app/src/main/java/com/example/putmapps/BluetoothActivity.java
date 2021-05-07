package com.example.putmapps;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ListView;

import com.example.putmapps.bluetooth.Bluetooth;

public class BluetoothActivity extends AppCompatActivity {

    ListView listView;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_bluetooth);

        Bluetooth bluetooth = new Bluetooth();

        listView = (ListView)findViewById(R.id.listview);

        ArrayAdapter arrayAdapter = new ArrayAdapter(this, android.R.layout.simple_list_item_1, bluetooth.AddressesAndNames());

        listView.setAdapter(arrayAdapter);

        listView.setOnItemClickListener((parent, view, position, id) -> {
            bluetooth.connect(bluetooth.AddressesAndNames().get(position));
            BluetoothActivity.this.finish();
        });

    }
}