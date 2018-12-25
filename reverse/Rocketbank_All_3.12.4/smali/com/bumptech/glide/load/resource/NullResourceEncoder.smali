.class public final Lcom/bumptech/glide/load/resource/NullResourceEncoder;
.super Ljava/lang/Object;
.source "NullResourceEncoder.java"

# interfaces
.implements Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/nineoldandroids/animation/ValueAnimator$AnimatorUpdateListener<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/NullResourceEncoder<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/NullResourceEncoder;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/bumptech/glide/load/resource/NullResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/NullResourceEncoder<",
            "TT;>;"
        }
    .end annotation

    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/NullResourceEncoder;->NULL_ENCODER:Lcom/bumptech/glide/load/resource/NullResourceEncoder;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic encode(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method
