.class public final Lokhttp3/internal/http/HttpDate;
.super Ljava/lang/Object;
.source "HttpDate.java"


# static fields
.field private static final BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

.field private static final BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

.field private static final STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/text/DateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lokhttp3/internal/http/HttpDate$1;

    invoke-direct {v0}, Lokhttp3/internal/http/HttpDate$1;-><init>()V

    sput-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    const/16 v0, 0xf

    .line 49
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "EEE, dd MMM yyyy HH:mm:ss zzz"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "EEEE, dd-MMM-yy HH:mm:ss zzz"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "EEE MMM d HH:mm:ss yyyy"

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "EEE, dd-MMM-yyyy HH:mm:ss z"

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const-string v2, "EEE, dd-MMM-yyyy HH-mm-ss z"

    const/4 v3, 0x4

    aput-object v2, v1, v3

    const-string v2, "EEE, dd MMM yy HH:mm:ss z"

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "EEE dd-MMM-yyyy HH:mm:ss z"

    const/4 v3, 0x6

    aput-object v2, v1, v3

    const-string v2, "EEE dd MMM yyyy HH:mm:ss z"

    const/4 v3, 0x7

    aput-object v2, v1, v3

    const-string v2, "EEE dd-MMM-yyyy HH-mm-ss z"

    const/16 v3, 0x8

    aput-object v2, v1, v3

    const-string v2, "EEE dd-MMM-yy HH:mm:ss z"

    const/16 v3, 0x9

    aput-object v2, v1, v3

    const-string v2, "EEE dd MMM yy HH:mm:ss z"

    const/16 v3, 0xa

    aput-object v2, v1, v3

    const-string v2, "EEE,dd-MMM-yy HH:mm:ss z"

    const/16 v3, 0xb

    aput-object v2, v1, v3

    const-string v2, "EEE,dd-MMM-yyyy HH:mm:ss z"

    const/16 v3, 0xc

    aput-object v2, v1, v3

    const-string v2, "EEE, dd-MM-yyyy HH:mm:ss z"

    const/16 v3, 0xd

    aput-object v2, v1, v3

    const-string v2, "EEE MMM d yyyy HH:mm:ss z"

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sput-object v1, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    .line 71
    new-array v0, v0, [Ljava/text/DateFormat;

    sput-object v0, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    return-void
.end method

.method public static format(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 114
    sget-object v0, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/DateFormat;

    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/Date;
    .locals 8

    .line 76
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 80
    :cond_0
    new-instance v0, Ljava/text/ParsePosition;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Ljava/text/ParsePosition;-><init>(I)V

    .line 81
    sget-object v3, Lokhttp3/internal/http/HttpDate;->STANDARD_DATE_FORMAT:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/text/DateFormat;

    invoke-virtual {v3, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v3

    .line 82
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v4, v5, :cond_1

    return-object v3

    .line 87
    :cond_1
    sget-object v3, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    monitor-enter v3

    move v4, v2

    :goto_0
    const/16 v5, 0xf

    if-ge v4, v5, :cond_4

    .line 89
    :try_start_0
    sget-object v5, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aget-object v5, v5, v4

    if-nez v5, :cond_2

    .line 91
    new-instance v5, Ljava/text/SimpleDateFormat;

    sget-object v6, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMAT_STRINGS:[Ljava/lang/String;

    aget-object v6, v6, v4

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 94
    sget-object v6, Lokhttp3/internal/Util;->UTC:Ljava/util/TimeZone;

    invoke-virtual {v5, v6}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 95
    sget-object v6, Lokhttp3/internal/http/HttpDate;->BROWSER_COMPATIBLE_DATE_FORMATS:[Ljava/text/DateFormat;

    aput-object v5, v6, v4

    .line 97
    :cond_2
    invoke-virtual {v0, v2}, Ljava/text/ParsePosition;->setIndex(I)V

    .line 98
    invoke-virtual {v5, p0, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v5

    .line 99
    invoke-virtual {v0}, Ljava/text/ParsePosition;->getIndex()I

    move-result v6

    if-eqz v6, :cond_3

    .line 105
    monitor-exit v3

    return-object v5

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 108
    :cond_4
    monitor-exit v3

    return-object v1

    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
