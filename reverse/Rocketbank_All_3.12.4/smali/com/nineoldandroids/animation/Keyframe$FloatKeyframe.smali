.class final Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;
.super Lcom/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FloatKeyframe"
.end annotation


# instance fields
.field mValue:F


# direct methods
.method constructor <init>()V
    .locals 1

    .line 333
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    const/4 v0, 0x0

    .line 334
    iput v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 335
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0

    .line 326
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    .line 327
    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mFraction:F

    .line 328
    iput p2, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    .line 329
    sget-object p1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValueType:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 330
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/nineoldandroids/animation/Keyframe;
    .locals 3

    .line 1355
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    .line 2191
    iget v1, p0, Lcom/nineoldandroids/animation/Keyframe;->mFraction:F

    .line 1355
    iget v2, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    .line 1356
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2355
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;

    .line 3191
    iget v1, p0, Lcom/nineoldandroids/animation/Keyframe;->mFraction:F

    .line 2355
    iget v2, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    .line 2356
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 343
    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 347
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_0

    .line 348
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mValue:F

    const/4 p1, 0x1

    .line 349
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/Keyframe$FloatKeyframe;->mHasValue:Z

    :cond_0
    return-void
.end method
