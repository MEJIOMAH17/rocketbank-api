package com.flurry.sdk;

import java.io.PrintStream;
import java.io.PrintWriter;

public abstract class lw implements Runnable {
    /* renamed from: a */
    private static final String f439a = "lw";
    /* renamed from: u */
    PrintStream f440u;
    /* renamed from: v */
    PrintWriter f441v;

    /* renamed from: a */
    public abstract void mo1370a();

    public final void run() {
        try {
            mo1370a();
        } catch (Throwable th) {
            if (this.f440u != null) {
                th.printStackTrace(this.f440u);
            } else if (this.f441v != null) {
                th.printStackTrace(this.f441v);
            } else {
                th.printStackTrace();
            }
            kf.m177a(6, f439a, "", th);
        }
    }
}
