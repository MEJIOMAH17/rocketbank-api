.class public final Lio/codetail/animation/RevealAnimator$RevealRadius;
.super Landroid/util/Property;
.source "RevealAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/codetail/animation/RevealAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RevealRadius"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lio/codetail/animation/RevealAnimator;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 134
    const-class v0, Ljava/lang/Float;

    const-string v1, "revealRadius"

    invoke-direct {p0, v0, v1}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 131
    check-cast p1, Lio/codetail/animation/RevealAnimator;

    .line 1144
    invoke-interface {p1}, Lio/codetail/animation/RevealAnimator;->getRevealRadius()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 131
    check-cast p1, Lio/codetail/animation/RevealAnimator;

    check-cast p2, Ljava/lang/Float;

    .line 2139
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p2}, Lio/codetail/animation/RevealAnimator;->setRevealRadius(F)V

    return-void
.end method
