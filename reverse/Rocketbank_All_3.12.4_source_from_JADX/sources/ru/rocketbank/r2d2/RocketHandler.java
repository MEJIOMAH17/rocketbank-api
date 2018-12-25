package ru.rocketbank.r2d2;

import android.os.Handler;
import android.os.Message;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public class RocketHandler extends Handler {
    private static RocketHandler instance;
    private boolean _isPaused = true;
    private final Queue<Message> _pausedMessages = new ConcurrentLinkedQueue();

    public static RocketHandler getInstance() {
        if (instance == null) {
            instance = new RocketHandler();
        }
        return instance;
    }

    public void onResume() {
        this._isPaused = false;
        while (true) {
            Message message = (Message) this._pausedMessages.poll();
            if (message != null) {
                super.dispatchMessage(message);
            } else {
                return;
            }
        }
    }

    public void onPause() {
        this._isPaused = true;
    }

    public void dispatchMessage(Message message) {
        if (this._isPaused) {
            this._pausedMessages.add(Message.obtain(message));
        } else {
            super.dispatchMessage(message);
        }
    }
}
