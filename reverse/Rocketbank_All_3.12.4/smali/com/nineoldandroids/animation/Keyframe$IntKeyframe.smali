.class final Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;
.super Lcom/nineoldandroids/animation/Keyframe;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntKeyframe"
.end annotation


# instance fields
.field mValue:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 289
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    const/4 v0, 0x0

    .line 290
    iput v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 291
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FI)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/nineoldandroids/animation/Keyframe;-><init>()V

    .line 283
    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mFraction:F

    .line 284
    iput p2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    .line 285
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValueType:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z

    return-void
.end method


# virtual methods
.method public final bridge synthetic clone()Lcom/nineoldandroids/animation/Keyframe;
    .locals 3

    .line 1311
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 2191
    iget v1, p0, Lcom/nineoldandroids/animation/Keyframe;->mFraction:F

    .line 1311
    iget v2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 1312
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2311
    new-instance v0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;

    .line 3191
    iget v1, p0, Lcom/nineoldandroids/animation/Keyframe;->mFraction:F

    .line 2311
    iget v2, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-direct {v0, v1, v2}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 2312
    invoke-virtual {p0}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    .line 299
    iget v0, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 304
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mValue:I

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/nineoldandroids/animation/Keyframe$IntKeyframe;->mHasValue:Z

    :cond_0
    return-void
.end method
