package com.example.putmapps.bluetooth;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.Set;
import java.util.UUID;

public class BluetoothReflection {

    private BluetoothReflection() {
    }

    public static Object getBluetoothAdapter() {
        Class bluetoothAdapterClass;
        try {
            bluetoothAdapterClass = Class.forName("android.bluetooth.BluetoothAdapter");
        } catch (ClassNotFoundException var2) {
            return null;
        }

        return invokeStaticMethod(getMethod(bluetoothAdapterClass, "getDefaultAdapter"));
    }

    public static boolean isBluetoothEnabled(Object bluetoothAdapter) {
        return (Boolean)invokeMethod(getMethod(bluetoothAdapter.getClass(), "isEnabled"), bluetoothAdapter);
    }

    public static Set getBondedDevices(Object bluetoothAdapter) {
        return (Set)invokeMethod(getMethod(bluetoothAdapter.getClass(), "getBondedDevices"), bluetoothAdapter);
    }

    public static boolean checkBluetoothAddress(Object bluetoothAdapter, String address) {
        return (Boolean)invokeMethod(getMethod(bluetoothAdapter.getClass(), "checkBluetoothAddress", String.class), bluetoothAdapter, address);
    }

    public static Object getRemoteDevice(Object bluetoothAdapter, String address) throws IllegalArgumentException {
        return invokeMethodThrowsIllegalArgumentException(getMethod(bluetoothAdapter.getClass(), "getRemoteDevice", String.class), bluetoothAdapter, address);
    }

    public static String getBluetoothDeviceName(Object bluetoothDevice) {
        return (String)invokeMethod(getMethod(bluetoothDevice.getClass(), "getName"), bluetoothDevice);
    }

    public static String getBluetoothDeviceAddress(Object bluetoothDevice) {
        return (String)invokeMethod(getMethod(bluetoothDevice.getClass(), "getAddress"), bluetoothDevice);
    }

    public static boolean isBonded(Object bluetoothDevice) {
        int bondState = (Integer)invokeMethod(getMethod(bluetoothDevice.getClass(), "getBondState"), bluetoothDevice);
        return bondState == 12;
    }

    public static Object getBluetoothClass(Object bluetoothDevice) {
        return invokeMethod(getMethod(bluetoothDevice.getClass(), "getBluetoothClass"), bluetoothDevice);
    }

    public static Object createRfcommSocketToServiceRecord(Object bluetoothDevice, UUID uuid) throws IOException {
        return invokeMethodThrowsIOException(getMethod(bluetoothDevice.getClass(), "createRfcommSocketToServiceRecord", UUID.class), bluetoothDevice, uuid);
    }

    public static Object createInsecureRfcommSocketToServiceRecord(Object bluetoothDevice, UUID uuid) throws IOException {
        return invokeMethodThrowsIOException(getMethod(bluetoothDevice.getClass(), "createInsecureRfcommSocketToServiceRecord", UUID.class), bluetoothDevice, uuid);
    }

    public static int getDeviceClass(Object bluetoothClass) {
        return (Integer)invokeMethod(getMethod(bluetoothClass.getClass(), "getDeviceClass"), bluetoothClass);
    }

    public static void connectToBluetoothSocket(Object bluetoothSocket) throws IOException {
        invokeMethodThrowsIOException(getMethod(bluetoothSocket.getClass(), "connect"), bluetoothSocket);
    }

    public static InputStream getInputStream(Object bluetoothSocket) throws IOException {
        return (InputStream)invokeMethodThrowsIOException(getMethod(bluetoothSocket.getClass(), "getInputStream"), bluetoothSocket);
    }

    public static OutputStream getOutputStream(Object bluetoothSocket) throws IOException {
        return (OutputStream)invokeMethodThrowsIOException(getMethod(bluetoothSocket.getClass(), "getOutputStream"), bluetoothSocket);
    }

    public static void closeBluetoothSocket(Object bluetoothSocket) throws IOException {
        invokeMethodThrowsIOException(getMethod(bluetoothSocket.getClass(), "close"), bluetoothSocket);
    }

    public static Object accept(Object bluetoothServerSocket) throws IOException {
        return invokeMethodThrowsIOException(getMethod(bluetoothServerSocket.getClass(), "accept"), bluetoothServerSocket);
    }

    private static Method getMethod(Class clazz, String name) {
        try {
            return clazz.getMethod(name);
        } catch (NoSuchMethodException var3) {
            throw new RuntimeException(var3);
        }
    }

    private static Method getMethod(Class clazz, String name, Class<?>... parameterTypes) {
        try {
            return clazz.getMethod(name, parameterTypes);
        } catch (NoSuchMethodException var4) {
            throw new RuntimeException(var4);
        }
    }

    private static Object invokeStaticMethod(Method method) {
        try {
            return method.invoke((Object)null);
        } catch (IllegalAccessException var3) {
            throw new RuntimeException(var3);
        } catch (InvocationTargetException var4) {
            Throwable cause = var4.getCause();
            cause.printStackTrace();
            if (cause instanceof RuntimeException) {
                throw (RuntimeException)cause;
            } else {
                throw new RuntimeException(cause);
            }
        }
    }

    private static Object invokeMethod(Method method, Object thisObject, Object... args) {
        try {
            return method.invoke(thisObject, args);
        } catch (IllegalAccessException var5) {
            throw new RuntimeException(var5);
        } catch (InvocationTargetException var6) {
            Throwable cause = var6.getCause();
            cause.printStackTrace();
            if (cause instanceof RuntimeException) {
                throw (RuntimeException)cause;
            } else {
                throw new RuntimeException(cause);
            }
        }
    }

    private static Object invokeMethodThrowsIllegalArgumentException(Method method, Object thisObject, Object... args) throws IllegalArgumentException {
        try {
            return method.invoke(thisObject, args);
        } catch (IllegalAccessException var5) {
            throw new RuntimeException(var5);
        } catch (InvocationTargetException var6) {
            Throwable cause = var6.getCause();
            cause.printStackTrace();
            if (cause instanceof IllegalArgumentException) {
                throw (IllegalArgumentException)cause;
            } else if (cause instanceof RuntimeException) {
                throw (RuntimeException)cause;
            } else {
                throw new RuntimeException(var6);
            }
        }
    }

    private static Object invokeMethodThrowsIOException(Method method, Object thisObject, Object... args) throws IOException {
        try {
            return method.invoke(thisObject, args);
        } catch (IllegalAccessException var5) {
            throw new RuntimeException(var5);
        } catch (InvocationTargetException var6) {
            Throwable cause = var6.getCause();
            cause.printStackTrace();
            if (cause instanceof IOException) {
                throw (IOException)cause;
            } else if (cause instanceof RuntimeException) {
                throw (RuntimeException)cause;
            } else {
                throw new RuntimeException(var6);
            }
        }
    }
}
