.class public final Lcom/flurry/sdk/jb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz<",
        "Lcom/flurry/sdk/jb;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1035
    :cond_0
    new-instance v0, Lcom/flurry/sdk/jb$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/jb$a$1;-><init>(Lcom/flurry/sdk/jb$a;Ljava/io/InputStream;)V

    .line 1042
    new-instance p1, Lcom/flurry/sdk/jb;

    invoke-direct {p1}, Lcom/flurry/sdk/jb;-><init>()V

    .line 1045
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 1046
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    .line 1048
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {p1, v1}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;Z)Z

    .line 1049
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    invoke-static {p1, v1, v2}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;J)J

    .line 1052
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    if-eqz v1, :cond_1

    .line 1057
    new-array v1, v1, [B

    .line 1058
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1059
    new-instance v2, Lcom/flurry/sdk/iy;

    invoke-direct {v2, v1}, Lcom/flurry/sdk/iy;-><init>([B)V

    .line 1060
    invoke-static {p1}, Lcom/flurry/sdk/jb;->a(Lcom/flurry/sdk/jb;)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2026
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Serialization not supported"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
