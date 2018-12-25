.class public Lcom/flurry/sdk/ks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ks$a;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String; = "ks"


# instance fields
.field a:Ljava/lang/String;

.field b:[B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/flurry/sdk/ks;->a:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/flurry/sdk/ks;->b:[B

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/flurry/sdk/ks;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/flurry/sdk/ks;->a:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/flurry/sdk/ks;->b:[B

    .line 97
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/flurry/sdk/ks;->a:Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/flurry/sdk/ks;->b:[B

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ".yflurrydatasenderblock."

    .line 117
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/ks;)[B
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/flurry/sdk/ks;->b:[B

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/ks;[B)[B
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/flurry/sdk/ks;->b:[B

    return-object p1
.end method
