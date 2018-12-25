.class public final Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final duration:I

.field private firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .locals 1

    .line 34
    new-instance p1, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    new-instance v0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;

    invoke-direct {v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;-><init>()V

    invoke-direct {p1, v0}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;)V

    return-void
.end method

.method private constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/16 p1, 0x12c

    .line 47
    iput p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    return-void
.end method


# virtual methods
.method public final build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 53
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 1062
    iget-object p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez p2, :cond_1

    .line 1063
    iget-object p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object p1

    .line 1065
    new-instance p2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    iput-object p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 1067
    :cond_1
    iget-object p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->firstResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    return-object p1

    .line 1071
    :cond_2
    iget-object p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez p2, :cond_3

    .line 1072
    iget-object p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-virtual {p2, p1, p1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object p1

    .line 1074
    new-instance p2, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    invoke-direct {p2, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    iput-object p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 1076
    :cond_3
    iget-object p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->secondResourceAnimation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    return-object p1
.end method
