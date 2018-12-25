.class public final Lcom/flurry/sdk/ku$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/flurry/sdk/kz;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ku;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/flurry/sdk/kz<",
        "Lcom/flurry/sdk/ku;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
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

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1046
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ku$a$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ku$a$2;-><init>(Lcom/flurry/sdk/ku$a;Ljava/io/InputStream;)V

    .line 1053
    new-instance p1, Lcom/flurry/sdk/ku;

    const/4 v1, 0x0

    invoke-direct {p1, v1}, Lcom/flurry/sdk/ku;-><init>(B)V

    .line 1054
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 2016
    iput-object v0, p1, Lcom/flurry/sdk/ku;->a:Ljava/lang/String;

    return-object p1
.end method

.method public final synthetic a(Ljava/io/OutputStream;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    check-cast p2, Lcom/flurry/sdk/ku;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2028
    :cond_0
    new-instance v0, Lcom/flurry/sdk/ku$a$1;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ku$a$1;-><init>(Lcom/flurry/sdk/ku$a;Ljava/io/OutputStream;)V

    .line 3016
    iget-object p1, p2, Lcom/flurry/sdk/ku;->a:Ljava/lang/String;

    .line 2035
    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 2037
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->flush()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method
