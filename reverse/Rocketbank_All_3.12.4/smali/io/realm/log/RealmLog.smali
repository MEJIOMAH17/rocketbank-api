.class public final Lio/realm/log/RealmLog;
.super Ljava/lang/Object;
.source "RealmLog.java"


# static fields
.field private static REALM_JAVA_TAG:Ljava/lang/String; = "REALM_JAVA"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x3

    .line 1147
    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->log$5d503500(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs fatal(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x7

    .line 1267
    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->log$5d503500(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private static varargs log$5d503500(ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p2, :cond_0

    .line 273
    array-length v1, p2

    if-lez v1, :cond_0

    .line 274
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 283
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    :cond_1
    sget-object p1, Lio/realm/log/RealmLog;->REALM_JAVA_TAG:Ljava/lang/String;

    const/4 p2, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lio/realm/log/RealmLog;->nativeLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-void
.end method

.method private static native nativeAddLogger(Lio/realm/log/RealmLogger;)V
.end method

.method private static native nativeClearLoggers()V
.end method

.method static native nativeCloseCoreLoggerBridge(J)V
.end method

.method static native nativeCreateCoreLoggerBridge(Ljava/lang/String;)J
.end method

.method private static native nativeGetLogLevel()I
.end method

.method private static native nativeLog(ILjava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
.end method

.method static native nativeLogToCoreLoggerBridge(JILjava/lang/String;)V
.end method

.method private static native nativeRegisterDefaultLogger()V
.end method

.method private static native nativeRemoveLogger(Lio/realm/log/RealmLogger;)V
.end method

.method private static native nativeSetLogLevel(I)V
.end method

.method public static varargs warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x5

    .line 1207
    invoke-static {v0, p0, p1}, Lio/realm/log/RealmLog;->log$5d503500(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
