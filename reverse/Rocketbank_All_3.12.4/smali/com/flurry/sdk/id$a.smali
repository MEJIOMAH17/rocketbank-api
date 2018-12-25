.class public final Lcom/flurry/sdk/id$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/id;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz<",
        "Lcom/flurry/sdk/id;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1046
    :cond_0
    new-instance v0, Lcom/flurry/sdk/id$a$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/id$a$2;-><init>(Lcom/flurry/sdk/id$a;Ljava/io/InputStream;)V

    .line 1053
    new-instance p1, Lcom/flurry/sdk/id;

    invoke-direct {p1}, Lcom/flurry/sdk/id;-><init>()V

    .line 1055
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v1

    .line 2014
    iput-wide v1, p1, Lcom/flurry/sdk/id;->a:J

    .line 1056
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    .line 3014
    iput-boolean v1, p1, Lcom/flurry/sdk/id;->b:Z

    .line 1058
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1059
    new-array v1, v1, [B

    .line 4014
    iput-object v1, p1, Lcom/flurry/sdk/id;->c:[B

    .line 5014
    iget-object v1, p1, Lcom/flurry/sdk/id;->c:[B

    .line 1060
    invoke-virtual {v0, v1}, Ljava/io/DataInputStream;->readFully([B)V

    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    check-cast p2, Lcom/flurry/sdk/id;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 5025
    :cond_0
    new-instance v0, Lcom/flurry/sdk/id$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/id$a$1;-><init>(Lcom/flurry/sdk/id$a;Ljava/io/OutputStream;)V

    .line 6014
    iget-wide v1, p2, Lcom/flurry/sdk/id;->a:J

    .line 5032
    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    .line 7014
    iget-boolean p1, p2, Lcom/flurry/sdk/id;->b:Z

    .line 5033
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 8014
    iget-object p1, p2, Lcom/flurry/sdk/id;->c:[B

    .line 5034
    array-length p1, p1

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 9014
    iget-object p1, p2, Lcom/flurry/sdk/id;->c:[B

    .line 5035
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->write([B)V

    .line 5037
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
