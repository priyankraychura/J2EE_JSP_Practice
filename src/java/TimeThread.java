package com.example;

import java.text.SimpleDateFormat;
import java.util.Date;

public class TimeThread implements Runnable {
    private volatile String currentTime;

    public TimeThread() {
        updateTime();
    }

    public String getCurrentTime() {
        return currentTime;
    }

    private void updateTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("EEEE, dd MMMM yyyy HH:mm:ss");
        currentTime = sdf.format(new Date());
    }

    @Override
    public void run() {
        while (true) {
            updateTime();
            try {
                Thread.sleep(1000); // Update every second
            } catch (InterruptedException e) {
                e.printStackTrace();
            }
        }
    }
}
