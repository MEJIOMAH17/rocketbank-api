.class public Lcom/flurry/sdk/jb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/jb$a;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String; = "jb"


# instance fields
.field a:Z

.field b:J

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iy;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/jb;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/jb;J)J
    .locals 0

    .line 17
    iput-wide p1, p0, Lcom/flurry/sdk/jb;->b:J

    return-wide p1
.end method

.method static synthetic a(Lcom/flurry/sdk/jb;)Ljava/util/List;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/flurry/sdk/jb;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/flurry/sdk/jb;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/flurry/sdk/jb;->a:Z

    return p1
.end method
