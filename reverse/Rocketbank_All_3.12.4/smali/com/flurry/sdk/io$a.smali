.class public final Lcom/flurry/sdk/io$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/io;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz<",
        "Lcom/flurry/sdk/io;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1057
    :cond_0
    new-instance v1, Lcom/flurry/sdk/io$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/io$a$2;-><init>(Lcom/flurry/sdk/io$a;Ljava/io/InputStream;)V

    .line 1064
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result p1

    if-nez p1, :cond_1

    return-object v0

    .line 1070
    :cond_1
    new-instance v0, Lcom/flurry/sdk/io;

    invoke-direct {v0}, Lcom/flurry/sdk/io;-><init>()V

    .line 1071
    new-array p1, p1, [B

    .line 2015
    iput-object p1, v0, Lcom/flurry/sdk/io;->a:[B

    .line 3015
    iget-object p1, v0, Lcom/flurry/sdk/io;->a:[B

    .line 1072
    invoke-virtual {v1, p1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1074
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    return-object v0
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    check-cast p2, Lcom/flurry/sdk/io;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 3036
    :cond_0
    new-instance v0, Lcom/flurry/sdk/io$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/io$a$1;-><init>(Lcom/flurry/sdk/io$a;Ljava/io/OutputStream;)V

    .line 4015
    iget-object p1, p2, Lcom/flurry/sdk/io;->a:[B

    .line 3043
    array-length p1, p1

    .line 3044
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 5015
    iget-object p1, p2, Lcom/flurry/sdk/io;->a:[B

    .line 3045
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 p1, 0x0

    .line 3046
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 3048
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
