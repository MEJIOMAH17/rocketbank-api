.class public final Lru/rocketbank/core/widgets/RocketAnimationDrawable;
.super Lru/rocketbank/core/widgets/DrawableContainer;
.source "RocketAnimationDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;,
        Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;
    }
.end annotation


# instance fields
.field private endListener:Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;

.field private mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

.field private final mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

.field private mCurFrame:I

.field private mMutated:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;-><init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private constructor <init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Landroid/content/res/Resources;)V
    .locals 2

    .line 357
    invoke-direct {p0}, Lru/rocketbank/core/widgets/DrawableContainer;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    .line 358
    new-instance v0, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-direct {v0, p1, p0, p2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;-><init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Lru/rocketbank/core/widgets/RocketAnimationDrawable;Landroid/content/res/Resources;)V

    .line 360
    iput-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    .line 361
    new-instance p2, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    const/4 v1, 0x0

    invoke-direct {p2, v1, p0, v1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;-><init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Lru/rocketbank/core/widgets/RocketAnimationDrawable;Landroid/content/res/Resources;)V

    iput-object p2, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    .line 363
    iget-object p2, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-virtual {p0, p2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setConstantEndingState(Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;)V

    .line 364
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setConstantState(Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 366
    invoke-direct {p0, p2, p1, p2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setFrame(IZZ)V

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Landroid/content/res/Resources;B)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;-><init>(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Landroid/content/res/Resources;)V

    return-void
.end method

.method private setFrame(IZZ)V
    .locals 4

    .line 225
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    .line 4703
    iget v0, v0, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-lt p1, v0, :cond_0

    return-void

    .line 228
    :cond_0
    iput p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    .line 229
    invoke-virtual {p0, p1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->selectDrawable(I)Z

    if-eqz p2, :cond_1

    .line 231
    invoke-virtual {p0, p0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_1
    if-eqz p3, :cond_2

    .line 235
    iput p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$000(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;)[I

    move-result-object v0

    aget p1, v0, p1

    int-to-long v0, p1

    add-long v2, p2, v0

    invoke-virtual {p0, p0, v2, v3}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final addEndingFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    return-void
.end method

.method public final addFrame(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .line 174
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-virtual {v0, p1, p2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 175
    iget p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    if-gez p1, :cond_0

    const/4 p1, 0x1

    const/4 p2, 0x0

    .line 176
    invoke-direct {p0, p2, p1, p2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setFrame(IZZ)V

    :cond_0
    return-void
.end method

.method public final inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    sget-object v0, Lru/rocketbank/core/R$styleable;->RocketAnimationDrawable:[I

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 246
    sget v1, Lru/rocketbank/core/R$styleable;->RocketAnimationDrawable_visible:I

    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->isVisible()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setVisible(ZZ)Z

    .line 247
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    sget v3, Lru/rocketbank/core/R$styleable;->RocketAnimationDrawable_variablePadding:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    .line 4715
    iput-boolean v3, v1, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mVariablePadding:Z

    .line 249
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    sget v3, Lru/rocketbank/core/R$styleable;->RocketAnimationDrawable_oneshot:I

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-static {v1, v3}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$102(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Z)Z

    .line 251
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 255
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/2addr v0, v2

    .line 257
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    if-eq v1, v2, :cond_5

    .line 258
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    if-ge v3, v0, :cond_1

    const/4 v5, 0x3

    if-eq v1, v5, :cond_5

    :cond_1
    const/4 v5, 0x2

    if-ne v1, v5, :cond_0

    if-gt v3, v0, :cond_0

    .line 263
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "item"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 267
    sget-object v1, Lru/rocketbank/core/R$styleable;->RocketAnimationDrawableItem:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 268
    sget v3, Lru/rocketbank/core/R$styleable;->RocketAnimationDrawableItem_duration:I

    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    if-gez v3, :cond_2

    .line 270
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 271
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <item> tag requires a \'duration\' attribute"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 274
    :cond_2
    sget v6, Lru/rocketbank/core/R$styleable;->RocketAnimationDrawableItem_drawable:I

    invoke-virtual {v1, v6, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 276
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v6, :cond_3

    .line 280
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_1

    .line 282
    :cond_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_3

    if-eq v1, v5, :cond_4

    .line 286
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": <item> tag requires a \'drawable\' attribute or child tag defining a drawable"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 290
    :cond_4
    invoke-static {p1, p2, p3}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 293
    :goto_1
    iget-object v5, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-virtual {v5, v1, v3}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    if-eqz v1, :cond_0

    .line 295
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    .line 299
    :cond_5
    invoke-direct {p0, v4, v2, v4}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setFrame(IZZ)V

    return-void
.end method

.method public final isRunning()Z
    .locals 1

    .line 106
    iget v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 304
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mMutated:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 305
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-static {v1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$000(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;)[I

    move-result-object v1

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    invoke-static {v0, v1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$002(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;[I)[I

    const/4 v0, 0x1

    .line 306
    iput-boolean v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mMutated:Z

    :cond_0
    return-object p0
.end method

.method public final run()V
    .locals 10

    .line 1181
    iget-boolean v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mIshowingEnding:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    .line 1182
    iget v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    add-int/2addr v0, v2

    .line 1183
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    .line 1703
    iget v3, v3, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-lt v0, v3, :cond_0

    move v0, v1

    .line 1188
    :cond_0
    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-static {v4}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$100(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    if-ge v0, v4, :cond_2

    :cond_1
    move v1, v2

    .line 2207
    :cond_2
    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    .line 2703
    iget v4, v4, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-ge v0, v4, :cond_3

    .line 2211
    iput v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    .line 2212
    invoke-virtual {p0, v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->selectDrawable(I)Z

    if-eqz v1, :cond_3

    .line 2219
    iput v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    .line 2220
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-static {v1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$000(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;)[I

    move-result-object v1

    aget v1, v1, v0

    int-to-long v6, v1

    add-long v8, v4, v6

    invoke-virtual {p0, p0, v8, v9}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 1190
    :cond_3
    iget-object v1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationEndingState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-static {v1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$100(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;)Z

    move-result v1

    if-eqz v1, :cond_4

    sub-int/2addr v3, v2

    if-lt v0, v3, :cond_4

    .line 1191
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->endListener:Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;

    if-eqz v0, :cond_4

    .line 1192
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->endListener:Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;

    invoke-interface {v0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;->stop()V

    :cond_4
    return-void

    .line 1196
    :cond_5
    iget v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    add-int/2addr v0, v2

    .line 1197
    iget-object v3, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    .line 3703
    iget v3, v3, Lru/rocketbank/core/widgets/DrawableContainer$DrawableContainerState;->mNumChildren:I

    if-lt v0, v3, :cond_6

    move v0, v1

    .line 1202
    :cond_6
    iget-object v4, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-static {v4}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$100(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;)Z

    move-result v4

    if-eqz v4, :cond_8

    sub-int/2addr v3, v2

    if-ge v0, v3, :cond_7

    goto :goto_0

    :cond_7
    move v2, v1

    :cond_8
    :goto_0
    invoke-direct {p0, v0, v1, v2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setFrame(IZZ)V

    return-void
.end method

.method public final setEndListener(Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->endListener:Lru/rocketbank/core/widgets/RocketAnimationDrawable$OnEndListener;

    return-void
.end method

.method public final setOneShot(Z)V
    .locals 1

    .line 160
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mAnimationState:Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;

    invoke-static {v0, p1}, Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;->access$102(Lru/rocketbank/core/widgets/RocketAnimationDrawable$AnimationState;Z)Z

    return-void
.end method

.method public final setVisible(ZZ)Z
    .locals 1

    .line 58
    invoke-super {p0, p1, p2}, Lru/rocketbank/core/widgets/DrawableContainer;->setVisible(ZZ)Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 61
    invoke-direct {p0, p1, p2, p2}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->setFrame(IZZ)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0, p0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return v0
.end method

.method public final start()V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->run()V

    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 95
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, p0}, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final swithEnding()V
    .locals 0

    .line 312
    invoke-super {p0}, Lru/rocketbank/core/widgets/DrawableContainer;->swithEnding()V

    return-void
.end method

.method public final unscheduleSelf(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, -0x1

    .line 121
    iput v0, p0, Lru/rocketbank/core/widgets/RocketAnimationDrawable;->mCurFrame:I

    .line 122
    invoke-super {p0, p1}, Lru/rocketbank/core/widgets/DrawableContainer;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
