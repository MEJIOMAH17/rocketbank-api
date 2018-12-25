package ru.rocketbank.core.manager;

import java.io.BufferedReader;
import java.io.DataInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import rx.functions.Func1;

/* compiled from: AtmsManager.kt */
final class AtmsManager$loadFromFile$1<T, R> implements Func1<T, R> {
    final /* synthetic */ AtmsManager this$0;

    AtmsManager$loadFromFile$1(AtmsManager atmsManager) {
        this.this$0 = atmsManager;
    }

    private Long call(InputStream inputStream) {
        inputStream = new BufferedReader(new InputStreamReader(new DataInputStream(inputStream)));
        try {
            Long access$loadFromFile = this.this$0.loadFromFile((Reader) inputStream);
            try {
                inputStream.close();
            } catch (InputStream inputStream2) {
                inputStream2.printStackTrace();
            }
            return access$loadFromFile;
        } catch (Throwable th) {
            try {
                inputStream2.close();
            } catch (InputStream inputStream22) {
                inputStream22.printStackTrace();
            }
        }
    }
}
