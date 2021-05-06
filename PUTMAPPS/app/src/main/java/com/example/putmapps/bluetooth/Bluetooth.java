package com.example.putmapps.bluetooth;

import android.os.Build;
import android.util.Log;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;

public class Bluetooth {
    protected final String logTag = "Bluetooth";

    private ByteOrder byteOrder;
    private String encoding;
    private byte delimiter;
    protected boolean secure;
    private Object connectedBluetoothSocket;
    private InputStream inputStream;
    private OutputStream outputStream;
    private Set<Integer> acceptableDeviceClasses;

    public Bluetooth() {

        this.HighByteFirst(false);
        this.CharacterEncoding("UTF-8");
        this.DelimiterByte(0);
        this.Secure(true);
    }

    protected final void setConnection(Object bluetoothSocket) throws IOException {
        this.connectedBluetoothSocket = bluetoothSocket;
        this.inputStream = new BufferedInputStream(BluetoothReflection.getInputStream(this.connectedBluetoothSocket));
        this.outputStream = new BufferedOutputStream(BluetoothReflection.getOutputStream(this.connectedBluetoothSocket));

    }

    public final void Disconnect() {
        if (this.connectedBluetoothSocket != null) {

            try {
                BluetoothReflection.closeBluetoothSocket(this.connectedBluetoothSocket);
                Log.i(this.logTag, "Disconnected from Bluetooth device.");
            } catch (IOException var2) {
                Log.w(this.logTag, "Error while disconnecting: " + var2.getMessage());
            }

            this.connectedBluetoothSocket = null;
        }

        this.inputStream = null;
        this.outputStream = null;
    }

    public final boolean IsConnected() {
        return this.connectedBluetoothSocket != null;
    }

    public void Secure(boolean secure) {
        this.secure = secure;
    }

    public void HighByteFirst(boolean highByteFirst) {
        this.byteOrder = highByteFirst ? ByteOrder.BIG_ENDIAN : ByteOrder.LITTLE_ENDIAN;
    }

    public void CharacterEncoding(String encoding) {
        try {
            "check".getBytes(encoding);
            this.encoding = encoding;
        } catch (UnsupportedEncodingException var3) {

        }

    }

    public void DelimiterByte(int number) {
        String functionName = "DelimiterByte";
        byte b = (byte)number;
        int n = number >> 8;
        if (n != 0 && n != -1) {

        } else {
            this.delimiter = b;
        }
    }

    public void SendText(String text) {
        byte[] bytes;
        try {
            bytes = text.getBytes(this.encoding);
        } catch (UnsupportedEncodingException var4) {
            Log.w(this.logTag, "UnsupportedEncodingException: " + var4.getMessage());
            bytes = text.getBytes();
        }

        this.write(bytes);
    }

    public void Send1ByteNumber(String number) {

        int n;

        try {
            n = Integer.decode(number);
        } catch (NumberFormatException var5) {
            return;
        }

        byte b = (byte)n;
        n >>= 8;
        if (n != 0 && n != -1) {

        } else {
            this.write(b);
        }
    }

    protected void write(byte[] bytes) {
        if (!this.IsConnected()) {

        } else {
            try {
                this.outputStream.write(bytes);
                this.outputStream.flush();
            } catch (IOException var4) {

            }

        }
    }

    protected void write(byte b) {
        if (!this.IsConnected()) {

        } else {
            try {
                this.outputStream.write(b);
                this.outputStream.flush();
            } catch (IOException var4) {

            }

        }
    }

    public int BytesAvailableToReceive() {
        if (!this.IsConnected()) {

            return 0;
        } else {
            try {
                return this.inputStream.available();
            } catch (IOException var3) {

                return 0;
            }
        }
    }

    public int ReceiveUnsigned1ByteNumber() {
        byte[] bytes = this.read();
        return bytes.length != 1 ? 0 : bytes[0] & 255;
    }

    protected final byte[] read() {
        if (!this.IsConnected()) {

            return new byte[0];
        } else {
            ByteArrayOutputStream buffer = new ByteArrayOutputStream();
            if (1 >= 0) {
                byte[] bytes = new byte[1];
                int totalBytesRead = 0;

                while(totalBytesRead < 1) {
                    try {
                        int numBytesRead = this.inputStream.read(bytes, totalBytesRead, bytes.length - totalBytesRead);
                        if (numBytesRead == -1) {

                            break;
                        }

                        totalBytesRead += numBytesRead;
                    } catch (IOException var7) {

                        break;
                    }
                }

                buffer.write(bytes, 0, totalBytesRead);
            } else {
                while(true) {
                    try {
                        int value = this.inputStream.read();
                        if (value == -1) {

                            break;
                        }

                        buffer.write(value);
                        if (value == this.delimiter) {
                            break;
                        }
                    } catch (IOException var8) {

                        break;
                    }
                }
            }

            return buffer.toByteArray();
        }
    }

    public List<String> AddressesAndNames() {
        List<String> addressesAndNames = new ArrayList();
        Object bluetoothAdapter = BluetoothReflection.getBluetoothAdapter();
        if (bluetoothAdapter != null && BluetoothReflection.isBluetoothEnabled(bluetoothAdapter)) {
            Iterator var3 = BluetoothReflection.getBondedDevices(bluetoothAdapter).iterator();

            while(var3.hasNext()) {
                Object bluetoothDevice = var3.next();
                if (this.isDeviceClassAcceptable(bluetoothDevice)) {
                    String name = BluetoothReflection.getBluetoothDeviceName(bluetoothDevice);
                    String address = BluetoothReflection.getBluetoothDeviceAddress(bluetoothDevice);
                    addressesAndNames.add(address + " " + name);
                }
            }
        }

        return addressesAndNames;
    }

    private boolean isDeviceClassAcceptable(Object bluetoothDevice) {
        if (this.acceptableDeviceClasses == null) {
            return true;
        } else {
            Object bluetoothClass = BluetoothReflection.getBluetoothClass(bluetoothDevice);
            if (bluetoothClass == null) {
                return false;
            } else {
                int deviceClass = BluetoothReflection.getDeviceClass(bluetoothClass);
                return this.acceptableDeviceClasses.contains(deviceClass);
            }
        }
    }

    public boolean connect(String address) {
        Object bluetoothAdapter = BluetoothReflection.getBluetoothAdapter();
        if (bluetoothAdapter == null) {
            return false;
        } else if (!BluetoothReflection.isBluetoothEnabled(bluetoothAdapter)) {
            return false;
        } else {
            int firstSpace = address.indexOf(" ");
            if (firstSpace != -1) {
                address = address.substring(0, firstSpace);
            }

            if (!BluetoothReflection.checkBluetoothAddress(bluetoothAdapter, address)) {

                return false;
            } else {
                Object bluetoothDevice = BluetoothReflection.getRemoteDevice(bluetoothAdapter, address);
                if (!BluetoothReflection.isBonded(bluetoothDevice)) {

                    return false;
                } else if (!this.isDeviceClassAcceptable(bluetoothDevice)) {

                    return false;
                } else {
                    UUID uuid;
                    try {
                        uuid = UUID.fromString("00001101-0000-1000-8000-00805F9B34FB");
                    } catch (IllegalArgumentException var10) {

                        return false;
                    }

                    this.Disconnect();

                    try {
                        this.connect(bluetoothDevice, uuid);
                        return true;
                    } catch (IOException var9) {
                        this.Disconnect();

                        return false;
                    }
                }
            }
        }
    }

    private void connect(Object bluetoothDevice, UUID uuid) throws IOException {
        Object bluetoothSocket;
        if (!this.secure && Integer.parseInt(Build.VERSION.SDK) >= 10) {
            bluetoothSocket = BluetoothReflection.createInsecureRfcommSocketToServiceRecord(bluetoothDevice, uuid);
        } else {
            bluetoothSocket = BluetoothReflection.createRfcommSocketToServiceRecord(bluetoothDevice, uuid);
        }

        BluetoothReflection.connectToBluetoothSocket(bluetoothSocket);
        this.setConnection(bluetoothSocket);
        Log.i(this.logTag, "Connected to Bluetooth device " + BluetoothReflection.getBluetoothDeviceAddress(bluetoothDevice) + " " + BluetoothReflection.getBluetoothDeviceName(bluetoothDevice) + ".");
        System.out.println("Connected to Bluetooth device " + BluetoothReflection.getBluetoothDeviceAddress(bluetoothDevice) + " " + BluetoothReflection.getBluetoothDeviceName(bluetoothDevice) + ".");
    }
}


