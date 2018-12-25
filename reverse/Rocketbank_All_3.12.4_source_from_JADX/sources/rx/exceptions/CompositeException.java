package rx.exceptions;

import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import rx.annotations.Beta;

public final class CompositeException extends RuntimeException {
    private static final long serialVersionUID = 3026362227162912146L;
    private Throwable cause;
    private final List<Throwable> exceptions;
    private final String message;

    static final class CompositeExceptionCausalChain extends RuntimeException {
        static final String MESSAGE = "Chain of Causes for CompositeException In Order Received =>";
        private static final long serialVersionUID = 3875212506787802066L;

        public final String getMessage() {
            return MESSAGE;
        }

        CompositeExceptionCausalChain() {
        }
    }

    static abstract class PrintStreamOrWriter {
        abstract Object lock();

        abstract void println(Object obj);

        PrintStreamOrWriter() {
        }
    }

    static final class WrappedPrintStream extends PrintStreamOrWriter {
        private final PrintStream printStream;

        WrappedPrintStream(PrintStream printStream) {
            this.printStream = printStream;
        }

        final Object lock() {
            return this.printStream;
        }

        final void println(Object obj) {
            this.printStream.println(obj);
        }
    }

    static final class WrappedPrintWriter extends PrintStreamOrWriter {
        private final PrintWriter printWriter;

        WrappedPrintWriter(PrintWriter printWriter) {
            this.printWriter = printWriter;
        }

        final Object lock() {
            return this.printWriter;
        }

        final void println(Object obj) {
            this.printWriter.println(obj);
        }
    }

    @Deprecated
    public CompositeException(String str, Collection<? extends Throwable> collection) {
        str = new LinkedHashSet();
        List arrayList = new ArrayList();
        if (collection != null) {
            for (Throwable th : collection) {
                if (th instanceof CompositeException) {
                    str.addAll(((CompositeException) th).getExceptions());
                } else if (th != null) {
                    str.add(th);
                } else {
                    str.add(new NullPointerException());
                }
            }
        } else {
            str.add(new NullPointerException());
        }
        arrayList.addAll(str);
        this.exceptions = Collections.unmodifiableList(arrayList);
        str = new StringBuilder();
        str.append(this.exceptions.size());
        str.append(" exceptions occurred. ");
        this.message = str.toString();
    }

    public CompositeException(Collection<? extends Throwable> collection) {
        this(null, collection);
    }

    @Beta
    public CompositeException(Throwable... thArr) {
        Collection linkedHashSet = new LinkedHashSet();
        List arrayList = new ArrayList();
        if (thArr != null) {
            for (Object obj : thArr) {
                if (obj instanceof CompositeException) {
                    linkedHashSet.addAll(((CompositeException) obj).getExceptions());
                } else if (obj != null) {
                    linkedHashSet.add(obj);
                } else {
                    linkedHashSet.add(new NullPointerException());
                }
            }
        } else {
            linkedHashSet.add(new NullPointerException());
        }
        arrayList.addAll(linkedHashSet);
        this.exceptions = Collections.unmodifiableList(arrayList);
        thArr = new StringBuilder();
        thArr.append(this.exceptions.size());
        thArr.append(" exceptions occurred. ");
        this.message = thArr.toString();
    }

    public final List<Throwable> getExceptions() {
        return this.exceptions;
    }

    public final String getMessage() {
        return this.message;
    }

    public final synchronized java.lang.Throwable getCause() {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
*/
        /*
        r8 = this;
        monitor-enter(r8);
        r0 = r8.cause;	 Catch:{ all -> 0x005f }
        if (r0 != 0) goto L_0x005b;	 Catch:{ all -> 0x005f }
    L_0x0005:
        r0 = new rx.exceptions.CompositeException$CompositeExceptionCausalChain;	 Catch:{ all -> 0x005f }
        r0.<init>();	 Catch:{ all -> 0x005f }
        r1 = new java.util.HashSet;	 Catch:{ all -> 0x005f }
        r1.<init>();	 Catch:{ all -> 0x005f }
        r2 = r8.exceptions;	 Catch:{ all -> 0x005f }
        r2 = r2.iterator();	 Catch:{ all -> 0x005f }
        r3 = r0;	 Catch:{ all -> 0x005f }
    L_0x0016:
        r4 = r2.hasNext();	 Catch:{ all -> 0x005f }
        if (r4 == 0) goto L_0x0059;	 Catch:{ all -> 0x005f }
    L_0x001c:
        r4 = r2.next();	 Catch:{ all -> 0x005f }
        r4 = (java.lang.Throwable) r4;	 Catch:{ all -> 0x005f }
        r5 = r1.contains(r4);	 Catch:{ all -> 0x005f }
        if (r5 != 0) goto L_0x0016;	 Catch:{ all -> 0x005f }
    L_0x0028:
        r1.add(r4);	 Catch:{ all -> 0x005f }
        r5 = r8.getListOfCauses(r4);	 Catch:{ all -> 0x005f }
        r5 = r5.iterator();	 Catch:{ all -> 0x005f }
    L_0x0033:
        r6 = r5.hasNext();	 Catch:{ all -> 0x005f }
        if (r6 == 0) goto L_0x0051;	 Catch:{ all -> 0x005f }
    L_0x0039:
        r6 = r5.next();	 Catch:{ all -> 0x005f }
        r6 = (java.lang.Throwable) r6;	 Catch:{ all -> 0x005f }
        r7 = r1.contains(r6);	 Catch:{ all -> 0x005f }
        if (r7 == 0) goto L_0x004d;	 Catch:{ all -> 0x005f }
    L_0x0045:
        r4 = new java.lang.RuntimeException;	 Catch:{ all -> 0x005f }
        r6 = "Duplicate found in causal chain so cropping to prevent loop ...";	 Catch:{ all -> 0x005f }
        r4.<init>(r6);	 Catch:{ all -> 0x005f }
        goto L_0x0033;	 Catch:{ all -> 0x005f }
    L_0x004d:
        r1.add(r6);	 Catch:{ all -> 0x005f }
        goto L_0x0033;
    L_0x0051:
        r3.initCause(r4);	 Catch:{ Throwable -> 0x0054 }
    L_0x0054:
        r3 = r8.getRootCause(r3);	 Catch:{ all -> 0x005f }
        goto L_0x0016;	 Catch:{ all -> 0x005f }
    L_0x0059:
        r8.cause = r0;	 Catch:{ all -> 0x005f }
    L_0x005b:
        r0 = r8.cause;	 Catch:{ all -> 0x005f }
        monitor-exit(r8);
        return r0;
    L_0x005f:
        r0 = move-exception;
        monitor-exit(r8);
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.exceptions.CompositeException.getCause():java.lang.Throwable");
    }

    public final void printStackTrace() {
        printStackTrace(System.err);
    }

    public final void printStackTrace(PrintStream printStream) {
        printStackTrace(new WrappedPrintStream(printStream));
    }

    public final void printStackTrace(PrintWriter printWriter) {
        printStackTrace(new WrappedPrintWriter(printWriter));
    }

    private void printStackTrace(PrintStreamOrWriter printStreamOrWriter) {
        StringBuilder stringBuilder = new StringBuilder(128);
        stringBuilder.append(this);
        stringBuilder.append('\n');
        for (Object obj : getStackTrace()) {
            stringBuilder.append("\tat ");
            stringBuilder.append(obj);
            stringBuilder.append('\n');
        }
        int i = 1;
        for (Throwable th : this.exceptions) {
            stringBuilder.append("  ComposedException ");
            stringBuilder.append(i);
            stringBuilder.append(" :\n");
            appendStackTrace(stringBuilder, th, "\t");
            i++;
        }
        synchronized (printStreamOrWriter.lock()) {
            printStreamOrWriter.println(stringBuilder.toString());
        }
    }

    private void appendStackTrace(StringBuilder stringBuilder, Throwable th, String str) {
        while (true) {
            stringBuilder.append(str);
            stringBuilder.append(th);
            stringBuilder.append('\n');
            for (Object obj : th.getStackTrace()) {
                stringBuilder.append("\t\tat ");
                stringBuilder.append(obj);
                stringBuilder.append('\n');
            }
            if (th.getCause() != null) {
                stringBuilder.append("\tCaused by: ");
                th = th.getCause();
                str = "";
            } else {
                return;
            }
        }
    }

    private List<Throwable> getListOfCauses(Throwable th) {
        List<Throwable> arrayList = new ArrayList();
        Throwable cause = th.getCause();
        if (cause != null) {
            if (cause != th) {
                while (true) {
                    arrayList.add(cause);
                    th = cause.getCause();
                    if (th == null) {
                        break;
                    } else if (th == cause) {
                        break;
                    } else {
                        cause = cause.getCause();
                    }
                }
                return arrayList;
            }
        }
        return arrayList;
    }

    private Throwable getRootCause(Throwable th) {
        Throwable cause = th.getCause();
        if (cause != null) {
            if (cause != th) {
                while (true) {
                    th = cause.getCause();
                    if (th == null) {
                        break;
                    } else if (th == cause) {
                        break;
                    } else {
                        cause = cause.getCause();
                    }
                }
                return cause;
            }
        }
        return th;
    }
}
