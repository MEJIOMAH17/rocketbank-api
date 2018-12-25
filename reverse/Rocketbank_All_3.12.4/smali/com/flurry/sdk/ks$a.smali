.class public final Lcom/flurry/sdk/ks$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz<",
        "Lcom/flurry/sdk/ks;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1065
    :cond_0
    new-instance v1, Lcom/flurry/sdk/ks$a$2;

    invoke-direct {v1, p0, p1}, Lcom/flurry/sdk/ks$a$2;-><init>(Lcom/flurry/sdk/ks$a;Ljava/io/InputStream;)V

    .line 1072
    new-instance p1, Lcom/flurry/sdk/ks;

    const/4 v2, 0x0

    invoke-direct {p1, v2}, Lcom/flurry/sdk/ks;-><init>(B)V

    .line 1074
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 1079
    :cond_1
    new-array v0, v2, [B

    invoke-static {p1, v0}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;[B)[B

    .line 1080
    invoke-static {p1}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/DataInputStream;->readFully([B)V

    .line 1082
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    check-cast p2, Lcom/flurry/sdk/ks;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2042
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ks$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ks$a$1;-><init>(Lcom/flurry/sdk/ks$a;Ljava/io/OutputStream;)V

    .line 2049
    invoke-static {p2}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)[B

    move-result-object p1

    array-length p1, p1

    .line 2051
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2052
    invoke-static {p2}, Lcom/flurry/sdk/ks;->a(Lcom/flurry/sdk/ks;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    const/4 p1, 0x0

    .line 2053
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 2055
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
