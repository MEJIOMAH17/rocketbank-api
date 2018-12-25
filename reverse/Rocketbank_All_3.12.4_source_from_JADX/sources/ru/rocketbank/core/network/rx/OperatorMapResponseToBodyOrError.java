package ru.rocketbank.core.network.rx;

import retrofit2.Response;
import rx.Observable.Operator;
import rx.Subscriber;

final class OperatorMapResponseToBodyOrError<T> implements Operator<T, Response<T>> {
    private static final OperatorMapResponseToBodyOrError<Object> INSTANCE = new OperatorMapResponseToBodyOrError();

    public final void bodyExtract() {
    }

    OperatorMapResponseToBodyOrError() {
    }

    static <R> OperatorMapResponseToBodyOrError<R> instance() {
        return INSTANCE;
    }

    public final Subscriber<? super Response<T>> call(final Subscriber<? super T> subscriber) {
        return new Subscriber<Response<T>>(subscriber) {
            public void onNext(retrofit2.Response<T> r2) {
                /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
                /*
                r1 = this;
                r0 = r2.isSuccessful();
                if (r0 == 0) goto L_0x0010;
            L_0x0006:
                r0 = r2;
                r2 = r2.body();
                r0.onNext(r2);
                return;
            L_0x0010:
                r0 = new ru.rocketbank.core.network.rx.HttpException;
                r0.<init>(r2);
                r2 = r2.errorBody();	 Catch:{ IOException -> 0x0022 }
                r2 = r2.string();	 Catch:{ IOException -> 0x0022 }
                r2 = ru.rocketbank.core.network.rx.ErrorConverter.bodyExtract(r0, r2);	 Catch:{ IOException -> 0x0022 }
                goto L_0x0027;
            L_0x0022:
                r2 = new java.io.IOException;
                r2.<init>(r0);
            L_0x0027:
                r0 = r2;
                r0.onError(r2);
                return;
                */
                throw new UnsupportedOperationException("Method not decompiled: ru.rocketbank.core.network.rx.OperatorMapResponseToBodyOrError.1.onNext(retrofit2.Response):void");
            }

            public void onCompleted() {
                subscriber.onCompleted();
            }

            public void onError(Throwable th) {
                subscriber.onError(ErrorConverter.covertCause(th));
            }
        };
    }
}
