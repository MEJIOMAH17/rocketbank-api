.class final Lru/rocketbank/core/manager/AtmsManager$loadFromFile$1;
.super Ljava/lang/Object;
.source "AtmsManager.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/manager/AtmsManager;->loadFromFile(Lru/rocketbank/core/manager/AtmsManager$RecreateListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/manager/AtmsManager;


# direct methods
.method constructor <init>(Lru/rocketbank/core/manager/AtmsManager;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$1;->this$0:Lru/rocketbank/core/manager/AtmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private call(Ljava/io/InputStream;)Ljava/lang/Long;
    .locals 3

    .line 54
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 55
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    check-cast v1, Ljava/io/Reader;

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 58
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$1;->this$0:Lru/rocketbank/core/manager/AtmsManager;

    move-object v1, p1

    check-cast v1, Ljava/io/Reader;

    invoke-static {v0, v1}, Lru/rocketbank/core/manager/AtmsManager;->access$loadFromFile(Lru/rocketbank/core/manager/AtmsManager;Ljava/io/Reader;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 60
    :try_start_2
    invoke-static {}, Lru/rocketbank/core/manager/AtmsManager;->access$getTAG_ATMS$cp()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to load from file"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    check-cast v1, Ljava/lang/Throwable;

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 66
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 67
    :goto_2
    throw v0
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 22
    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1}, Lru/rocketbank/core/manager/AtmsManager$loadFromFile$1;->call(Ljava/io/InputStream;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
