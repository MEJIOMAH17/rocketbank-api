.class public final Landroid/support/graphics/drawable/AnimatorInflaterCompat;
.super Ljava/lang/Object;
.source "AnimatorInflaterCompat.java"

# interfaces
.implements Lcom/bumptech/glide/load/ResourceDecoder;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/ResourceDecoder<",
        "Landroid/os/ParcelFileDescriptor;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final bitmapDecoder:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

.field private final bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

.field private decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 1

    .line 43033
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;-><init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/bumptech/glide/load/DecodeFormat;)V
    .locals 0

    .line 43037
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43038
    iput-object p1, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->bitmapDecoder:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    .line 43039
    iput-object p2, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    .line 43040
    iput-object p3, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->decodeFormat:Lcom/bumptech/glide/load/DecodeFormat;

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 513
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v13

    const/4 v0, 0x0

    move-object v14, v0

    .line 515
    :cond_0
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v15, 0x0

    if-ne v1, v2, :cond_1

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v13, :cond_c

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_c

    const/4 v3, 0x2

    if-ne v1, v3, :cond_b

    .line 522
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "objectAnimator"

    .line 525
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 20871
    new-instance v7, Landroid/animation/ObjectAnimator;

    invoke-direct {v7}, Landroid/animation/ObjectAnimator;-><init>()V

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    move-object v4, v7

    move/from16 v5, p7

    move-object v6, v10

    .line 20873
    invoke-static/range {v0 .. v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-object/from16 v3, p0

    move-object v0, v7

    goto/16 :goto_5

    :cond_2
    const-string v3, "animator"

    .line 527
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v11

    move/from16 v5, p7

    move-object v6, v10

    .line 528
    invoke-static/range {v0 .. v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;

    move-result-object v0

    move-object/from16 v3, p0

    goto/16 :goto_5

    :cond_3
    const-string v3, "set"

    .line 529
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 530
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 531
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR_SET:[I

    if-nez v9, :cond_4

    .line 21188
    invoke-virtual {v8, v11, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :goto_1
    move-object v6, v0

    goto :goto_2

    .line 21190
    :cond_4
    invoke-virtual {v9, v11, v0, v15, v15}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_1

    :goto_2
    const-string v0, "ordering"

    const-string v1, "http://schemas.android.com/apk/res/android"

    .line 23056
    invoke-interface {v10, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v2, v15

    :goto_3
    if-nez v2, :cond_6

    move/from16 v16, v15

    goto :goto_4

    .line 22106
    :cond_6
    invoke-virtual {v6, v15, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    move/from16 v16, v0

    .line 537
    :goto_4
    move-object v5, v7

    check-cast v5, Landroid/animation/AnimatorSet;

    move-object/from16 v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v15, v6

    move/from16 v6, v16

    move-object/from16 v16, v7

    move/from16 v7, p7

    invoke-static/range {v0 .. v7}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    .line 539
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    move-object/from16 v3, p0

    move-object/from16 v0, v16

    const/4 v15, 0x0

    goto :goto_5

    :cond_7
    const-string v3, "propertyValuesHolder"

    .line 540
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 542
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    move-object/from16 v3, p0

    .line 541
    invoke-static {v3, v8, v9, v10, v1}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    .line 543
    instance-of v4, v0, Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_8

    .line 544
    move-object v4, v0

    check-cast v4, Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v1}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    :cond_8
    move v15, v2

    :goto_5
    if-eqz v12, :cond_0

    if-nez v15, :cond_0

    if-nez v14, :cond_9

    .line 553
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 555
    :cond_9
    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 548
    :cond_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown animator name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    move-object/from16 v3, p0

    goto/16 :goto_0

    :cond_c
    if-eqz v12, :cond_f

    if-eqz v14, :cond_f

    .line 559
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    .line 561
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/16 v17, 0x0

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/Animator;

    add-int/lit8 v4, v17, 0x1

    .line 562
    aput-object v3, v1, v17

    move/from16 v17, v4

    goto :goto_6

    :cond_d
    if-nez p6, :cond_e

    .line 565
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_7

    .line 567
    :cond_e
    invoke-virtual {v12, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_f
    :goto_7
    return-object v0
.end method

.method private static createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;
    .locals 2

    .line 778
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 779
    invoke-static {p1}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object p0

    return-object p0

    .line 780
    :cond_0
    invoke-virtual {p0}, Landroid/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1

    .line 781
    invoke-static {p1}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object p0

    return-object p0

    .line 782
    :cond_1
    invoke-static {p1}, Landroid/animation/Keyframe;->ofObject(F)Landroid/animation/Keyframe;

    move-result-object p0

    return-object p0
.end method

.method private static distributeKeyframes([Landroid/animation/Keyframe;FII)V
    .locals 2

    sub-int v0, p3, p2

    add-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    div-float/2addr p1, v0

    :goto_0
    if-gt p2, p3, :cond_0

    .line 808
    aget-object v0, p0, p2

    add-int/lit8 v1, p2, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Landroid/animation/Keyframe;->getFraction()F

    move-result v1

    add-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/animation/Keyframe;->setFraction(F)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    .line 206
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-eqz v7, :cond_1

    .line 208
    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_1

    :cond_1
    move v4, v6

    .line 209
    :goto_1
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v8

    if-eqz v8, :cond_2

    move v9, v5

    goto :goto_2

    :cond_2
    move v9, v6

    :goto_2
    if-eqz v9, :cond_3

    .line 211
    iget v8, v8, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    move v8, v6

    :goto_3
    const/4 v10, 0x4

    const/4 v11, 0x3

    const/16 v12, 0x1f

    const/16 v13, 0x1c

    move/from16 v14, p1

    if-ne v14, v10, :cond_9

    if-eqz v7, :cond_5

    if-lt v4, v13, :cond_4

    if-gt v4, v12, :cond_4

    move v10, v5

    goto :goto_4

    :cond_4
    move v10, v6

    :goto_4
    if-nez v10, :cond_7

    :cond_5
    if-eqz v9, :cond_8

    if-lt v8, v13, :cond_6

    if-gt v8, v12, :cond_6

    move v10, v5

    goto :goto_5

    :cond_6
    move v10, v6

    :goto_5
    if-eqz v10, :cond_8

    :cond_7
    move v14, v11

    goto :goto_6

    :cond_8
    move v14, v6

    :cond_9
    :goto_6
    if-nez v14, :cond_a

    move v10, v5

    goto :goto_7

    :cond_a
    move v10, v6

    :goto_7
    const/4 v15, 0x2

    if-ne v14, v15, :cond_10

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v1}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v2

    .line 233
    invoke-static {v0}, Landroid/support/v4/graphics/PathParser;->createNodesFromPathData(Ljava/lang/String;)[Landroid/support/v4/graphics/PathParser$PathDataNode;

    move-result-object v4

    if-nez v2, :cond_b

    if-eqz v4, :cond_f

    :cond_b
    if-eqz v2, :cond_e

    .line 236
    new-instance v7, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v7, v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(B)V

    if-eqz v4, :cond_d

    .line 238
    invoke-static {v2, v4}, Landroid/support/v4/graphics/PathParser;->canMorph([Landroid/support/v4/graphics/PathParser$PathDataNode;[Landroid/support/v4/graphics/PathParser$PathDataNode;)Z

    move-result v8

    if-nez v8, :cond_c

    .line 239
    new-instance v2, Landroid/view/InflateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " Can\'t morph from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 242
    :cond_c
    new-array v0, v15, [Ljava/lang/Object;

    aput-object v2, v0, v6

    aput-object v4, v0, v5

    invoke-static {v3, v7, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto/16 :goto_14

    .line 245
    :cond_d
    new-array v0, v5, [Ljava/lang/Object;

    aput-object v2, v0, v6

    invoke-static {v3, v7, v0}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto/16 :goto_14

    :cond_e
    if-eqz v4, :cond_f

    .line 249
    new-instance v0, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;

    invoke-direct {v0, v6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat$PathDataEvaluator;-><init>(B)V

    .line 250
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v4, v1, v6

    invoke-static {v3, v0, v1}, Landroid/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    move-object v0, v15

    goto/16 :goto_14

    :cond_f
    const/4 v0, 0x0

    goto/16 :goto_14

    :cond_10
    if-ne v14, v11, :cond_11

    .line 259
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v11

    goto :goto_8

    :cond_11
    const/4 v11, 0x0

    :goto_8
    const/4 v14, 0x5

    const/4 v12, 0x0

    if-eqz v10, :cond_17

    if-eqz v7, :cond_15

    if-ne v4, v14, :cond_12

    .line 266
    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    goto :goto_9

    .line 268
    :cond_12
    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    :goto_9
    if-eqz v9, :cond_14

    if-ne v8, v14, :cond_13

    .line 272
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    goto :goto_a

    .line 274
    :cond_13
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 276
    :goto_a
    new-array v2, v15, [F

    aput v1, v2, v6

    aput v0, v2, v5

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    goto :goto_c

    .line 279
    :cond_14
    new-array v0, v5, [F

    aput v1, v0, v6

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    goto :goto_c

    :cond_15
    if-ne v8, v14, :cond_16

    .line 283
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    goto :goto_b

    .line 285
    :cond_16
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    .line 287
    :goto_b
    new-array v1, v5, [F

    aput v0, v1, v6

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    :goto_c
    move-object v0, v15

    goto/16 :goto_13

    :cond_17
    if-eqz v7, :cond_1f

    if-ne v4, v14, :cond_18

    .line 294
    invoke-virtual {v0, v1, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    goto :goto_e

    :cond_18
    if-lt v4, v13, :cond_19

    const/16 v7, 0x1f

    if-gt v4, v7, :cond_19

    move v4, v5

    goto :goto_d

    :cond_19
    move v4, v6

    :goto_d
    if-eqz v4, :cond_1a

    .line 296
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    goto :goto_e

    .line 298
    :cond_1a
    invoke-virtual {v0, v1, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    :goto_e
    if-eqz v9, :cond_1e

    if-ne v8, v14, :cond_1b

    .line 302
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_10

    :cond_1b
    if-lt v8, v13, :cond_1c

    const/16 v4, 0x1f

    if-gt v8, v4, :cond_1c

    move v4, v5

    goto :goto_f

    :cond_1c
    move v4, v6

    :goto_f
    if-eqz v4, :cond_1d

    .line 304
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_10

    .line 306
    :cond_1d
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 308
    :goto_10
    new-array v2, v15, [I

    aput v1, v2, v6

    aput v0, v2, v5

    invoke-static {v3, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    goto :goto_c

    .line 310
    :cond_1e
    new-array v0, v5, [I

    aput v1, v0, v6

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    goto :goto_c

    :cond_1f
    if-eqz v9, :cond_23

    if-ne v8, v14, :cond_20

    .line 315
    invoke-virtual {v0, v2, v12}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_12

    :cond_20
    if-lt v8, v13, :cond_21

    const/16 v1, 0x1f

    if-gt v8, v1, :cond_21

    move v1, v5

    goto :goto_11

    :cond_21
    move v1, v6

    :goto_11
    if-eqz v1, :cond_22

    .line 317
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    goto :goto_12

    .line 319
    :cond_22
    invoke-virtual {v0, v2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 321
    :goto_12
    new-array v1, v5, [I

    aput v0, v1, v6

    invoke-static {v3, v1}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    goto :goto_c

    :cond_23
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_24

    if-eqz v11, :cond_24

    .line 326
    invoke-virtual {v0, v11}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    :cond_24
    :goto_14
    return-object v0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;FLorg/xmlpull/v1/XmlPullParser;)Landroid/animation/ValueAnimator;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 889
    sget-object v0, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_ANIMATOR:[I

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 39188
    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 39190
    :cond_0
    invoke-virtual {p2, p3, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 891
    :goto_0
    sget-object v2, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_ANIMATOR:[I

    if-nez p2, :cond_1

    .line 40188
    invoke-virtual {p1, p3, v2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_1

    .line 40190
    :cond_1
    invoke-virtual {p2, p3, v2, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_1
    if-nez p4, :cond_2

    .line 895
    new-instance p4, Landroid/animation/ValueAnimator;

    invoke-direct {p4}, Landroid/animation/ValueAnimator;-><init>()V

    .line 898
    :cond_2
    invoke-static {p4, v0, p1, p5, p6}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V

    const-string p2, "interpolator"

    const-string p3, "http://schemas.android.com/apk/res/android"

    .line 42056
    invoke-interface {p6, p3, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    if-nez p2, :cond_4

    goto :goto_3

    .line 41142
    :cond_4
    invoke-virtual {v0, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    :goto_3
    if-lez v1, :cond_5

    .line 904
    invoke-static {p0, v1}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    .line 905
    invoke-virtual {p4, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 908
    :cond_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p1, :cond_6

    .line 910
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_6
    return-object p4
.end method

.method public static loadAnimator$3ff1a0b8(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;I)Landroid/animation/Animator;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v9
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1500
    :try_start_1
    invoke-static {v9}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v9

    invoke-static/range {v1 .. v8}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createAnimatorFromXml(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;IF)Landroid/animation/Animator;

    move-result-object p0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v9, :cond_0

    .line 146
    invoke-interface {v9}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    move-object v0, v9

    goto :goto_2

    :catch_0
    move-exception p0

    move-object v0, v9

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v0, v9

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 140
    :goto_0
    :try_start_2
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t load animation resource ID #0x"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 144
    throw p1

    :catch_3
    move-exception p0

    .line 134
    :goto_1
    new-instance p1, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Can\'t load animation resource ID #0x"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 136
    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 138
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_2
    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p0
.end method

.method private static loadValues(Landroid/content/Context;Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)[Landroid/animation/PropertyValuesHolder;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v5, 0x0

    .line 578
    :goto_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    if-eq v6, v7, :cond_34

    const/4 v9, 0x1

    if-eq v6, v9, :cond_34

    const/4 v10, 0x2

    if-eq v6, v10, :cond_0

    .line 582
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    goto :goto_0

    .line 586
    :cond_0
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v11, "propertyValuesHolder"

    .line 588
    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 589
    sget-object v6, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_PROPERTY_VALUES_HOLDER:[I

    if-nez v1, :cond_1

    .line 23188
    invoke-virtual {v0, v3, v6}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    goto :goto_1

    .line 23190
    :cond_1
    invoke-virtual {v1, v3, v6, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    :goto_1
    const-string v11, "propertyName"

    const-string v12, "http://schemas.android.com/apk/res/android"

    .line 25056
    invoke-interface {v2, v12, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_2

    move v11, v9

    goto :goto_2

    :cond_2
    move v11, v8

    :goto_2
    if-nez v11, :cond_3

    const/4 v11, 0x0

    goto :goto_3

    .line 24160
    :cond_3
    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_3
    const-string v12, "valueType"

    const-string v13, "http://schemas.android.com/apk/res/android"

    .line 26056
    invoke-interface {v2, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_4

    move v12, v9

    goto :goto_4

    :cond_4
    move v12, v8

    :goto_4
    const/4 v13, 0x4

    if-nez v12, :cond_5

    move v10, v13

    goto :goto_5

    .line 25106
    :cond_5
    invoke-virtual {v6, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    :goto_5
    move v14, v10

    const/4 v12, 0x0

    .line 26695
    :goto_6
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v15

    if-eq v15, v7, :cond_23

    if-eq v15, v9, :cond_23

    .line 26697
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string v9, "keyframe"

    .line 26698
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    const/16 v9, 0x1f

    const/16 v15, 0x1c

    if-ne v14, v13, :cond_c

    .line 26700
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14

    .line 27635
    sget-object v4, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    if-nez v1, :cond_6

    .line 28188
    invoke-virtual {v0, v14, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_7

    .line 28190
    :cond_6
    invoke-virtual {v1, v14, v4, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    :goto_7
    const-string v14, "value"

    const-string v13, "http://schemas.android.com/apk/res/android"

    .line 30056
    invoke-interface {v2, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    const/4 v13, 0x1

    goto :goto_8

    :cond_7
    move v13, v8

    :goto_8
    if-nez v13, :cond_8

    const/4 v13, 0x0

    goto :goto_9

    .line 29176
    :cond_8
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    :goto_9
    if-eqz v13, :cond_9

    const/4 v14, 0x1

    goto :goto_a

    :cond_9
    move v14, v8

    :goto_a
    if-eqz v14, :cond_b

    .line 27643
    iget v13, v13, Landroid/util/TypedValue;->type:I

    if-lt v13, v15, :cond_a

    if-gt v13, v9, :cond_a

    const/4 v13, 0x1

    goto :goto_b

    :cond_a
    move v13, v8

    :goto_b
    if-eqz v13, :cond_b

    move v13, v7

    goto :goto_c

    :cond_b
    move v13, v8

    .line 27648
    :goto_c
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_d

    :cond_c
    move v13, v14

    .line 26703
    :goto_d
    invoke-static/range {p3 .. p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v4

    .line 31817
    sget-object v14, Landroid/support/graphics/drawable/AndroidResources;->STYLEABLE_KEYFRAME:[I

    if-nez v1, :cond_d

    .line 32188
    invoke-virtual {v0, v4, v14}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    goto :goto_e

    .line 32190
    :cond_d
    invoke-virtual {v1, v4, v14, v8, v8}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    :goto_e
    const-string v14, "fraction"

    const-string v9, "http://schemas.android.com/apk/res/android"

    .line 34056
    invoke-interface {v2, v9, v14}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_e

    const/4 v9, 0x1

    goto :goto_f

    :cond_e
    move v9, v8

    :goto_f
    const/high16 v14, -0x40800000    # -1.0f

    if-nez v9, :cond_f

    goto :goto_10

    .line 33072
    :cond_f
    invoke-virtual {v4, v7, v14}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    :goto_10
    const-string v9, "value"

    const-string v7, "http://schemas.android.com/apk/res/android"

    .line 35056
    invoke-interface {v2, v7, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_10

    const/4 v7, 0x1

    goto :goto_11

    :cond_10
    move v7, v8

    :goto_11
    if-nez v7, :cond_11

    const/4 v7, 0x0

    goto :goto_12

    .line 34176
    :cond_11
    invoke-virtual {v4, v8}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v7

    :goto_12
    if-eqz v7, :cond_12

    const/4 v8, 0x4

    const/4 v9, 0x1

    goto :goto_13

    :cond_12
    move v9, v8

    const/4 v8, 0x4

    :goto_13
    if-ne v13, v8, :cond_15

    if-eqz v9, :cond_14

    .line 31831
    iget v7, v7, Landroid/util/TypedValue;->type:I

    if-lt v7, v15, :cond_13

    const/16 v15, 0x1f

    if-gt v7, v15, :cond_13

    const/4 v7, 0x1

    goto :goto_14

    :cond_13
    const/4 v7, 0x0

    :goto_14
    if-eqz v7, :cond_14

    const/4 v7, 0x3

    goto :goto_15

    :cond_14
    const/4 v7, 0x0

    goto :goto_15

    :cond_15
    move v7, v13

    :goto_15
    if-eqz v9, :cond_1b

    const/4 v9, 0x3

    if-eq v7, v9, :cond_18

    packed-switch v7, :pswitch_data_0

    const/4 v7, 0x0

    goto :goto_1a

    :pswitch_0
    const-string v7, "value"

    const-string v9, "http://schemas.android.com/apk/res/android"

    .line 37056
    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_16

    const/4 v7, 0x1

    goto :goto_16

    :cond_16
    const/4 v7, 0x0

    :goto_16
    if-nez v7, :cond_17

    const/4 v9, 0x0

    goto :goto_17

    :cond_17
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 36072
    invoke-virtual {v4, v7, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 31843
    :goto_17
    invoke-static {v14, v9}, Landroid/animation/Keyframe;->ofFloat(FF)Landroid/animation/Keyframe;

    move-result-object v7

    goto :goto_1a

    :cond_18
    :pswitch_1
    const-string v7, "value"

    const-string v9, "http://schemas.android.com/apk/res/android"

    .line 38056
    invoke-interface {v2, v9, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    const/4 v7, 0x1

    goto :goto_18

    :cond_19
    const/4 v7, 0x0

    :goto_18
    if-nez v7, :cond_1a

    const/4 v9, 0x0

    goto :goto_19

    :cond_1a
    const/4 v7, 0x0

    .line 37106
    invoke-virtual {v4, v7, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 31849
    :goto_19
    invoke-static {v14, v9}, Landroid/animation/Keyframe;->ofInt(FI)Landroid/animation/Keyframe;

    move-result-object v7

    goto :goto_1a

    :cond_1b
    if-nez v7, :cond_1c

    .line 31853
    invoke-static {v14}, Landroid/animation/Keyframe;->ofFloat(F)Landroid/animation/Keyframe;

    move-result-object v7

    goto :goto_1a

    .line 31854
    :cond_1c
    invoke-static {v14}, Landroid/animation/Keyframe;->ofInt(F)Landroid/animation/Keyframe;

    move-result-object v7

    :goto_1a
    const-string v9, "interpolator"

    const-string v14, "http://schemas.android.com/apk/res/android"

    .line 39056
    invoke-interface {v2, v14, v9}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1d

    const/4 v9, 0x1

    goto :goto_1b

    :cond_1d
    const/4 v9, 0x0

    :goto_1b
    if-nez v9, :cond_1e

    const/4 v15, 0x0

    goto :goto_1c

    :cond_1e
    const/4 v9, 0x0

    const/4 v14, 0x1

    .line 38142
    invoke-virtual {v4, v14, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v15

    :goto_1c
    if-lez v15, :cond_1f

    move-object/from16 v9, p0

    .line 31860
    invoke-static {v9, v15}, Landroid/support/graphics/drawable/AnimationUtilsCompat;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v14

    .line 31861
    invoke-virtual {v7, v14}, Landroid/animation/Keyframe;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_1d

    :cond_1f
    move-object/from16 v9, p0

    .line 31863
    :goto_1d
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz v7, :cond_21

    if-nez v12, :cond_20

    .line 26707
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 26709
    :cond_20
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26711
    :cond_21
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move v14, v13

    goto :goto_1e

    :cond_22
    move-object/from16 v9, p0

    move v8, v13

    :goto_1e
    move v13, v8

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto/16 :goto_6

    :cond_23
    move-object/from16 v9, p0

    if-eqz v12, :cond_2e

    .line 26716
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2e

    const/4 v7, 0x0

    .line 26722
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/animation/Keyframe;

    add-int/lit8 v7, v4, -0x1

    .line 26723
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe;

    .line 26724
    invoke-virtual {v7}, Landroid/animation/Keyframe;->getFraction()F

    move-result v13

    const/high16 v15, 0x3f800000    # 1.0f

    cmpg-float v18, v13, v15

    if-gez v18, :cond_25

    const/16 v17, 0x0

    cmpg-float v13, v13, v17

    if-gez v13, :cond_24

    .line 26727
    invoke-virtual {v7, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_1f

    .line 26729
    :cond_24
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v7, v15}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v7

    invoke-virtual {v12, v13, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    .line 26733
    :cond_25
    :goto_1f
    invoke-virtual {v8}, Landroid/animation/Keyframe;->getFraction()F

    move-result v7

    const/4 v13, 0x0

    cmpl-float v17, v7, v13

    if-eqz v17, :cond_27

    cmpg-float v7, v7, v13

    if-gez v7, :cond_26

    .line 26736
    invoke-virtual {v8, v13}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_20

    .line 26738
    :cond_26
    invoke-static {v8, v13}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->createNewKeyframe(Landroid/animation/Keyframe;F)Landroid/animation/Keyframe;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v12, v8, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    .line 26742
    :cond_27
    :goto_20
    new-array v7, v4, [Landroid/animation/Keyframe;

    .line 26743
    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    const/4 v8, 0x0

    :goto_21
    if-ge v8, v4, :cond_2d

    .line 26745
    aget-object v12, v7, v8

    .line 26746
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v13

    const/4 v15, 0x0

    cmpg-float v13, v13, v15

    if-gez v13, :cond_2c

    if-nez v8, :cond_28

    .line 26748
    invoke-virtual {v12, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    goto :goto_23

    :cond_28
    add-int/lit8 v13, v4, -0x1

    if-ne v8, v13, :cond_29

    const/high16 v15, 0x3f800000    # 1.0f

    .line 26750
    invoke-virtual {v12, v15}, Landroid/animation/Keyframe;->setFraction(F)V

    const/16 v17, 0x0

    goto :goto_24

    :cond_29
    const/high16 v15, 0x3f800000    # 1.0f

    add-int/lit8 v12, v8, 0x1

    move v15, v8

    :goto_22
    if-ge v12, v13, :cond_2a

    .line 26757
    aget-object v0, v7, v12

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    const/16 v17, 0x0

    cmpl-float v0, v0, v17

    if-gez v0, :cond_2b

    add-int/lit8 v0, v12, 0x1

    move v15, v12

    move v12, v0

    move-object/from16 v0, p1

    goto :goto_22

    :cond_2a
    const/16 v17, 0x0

    :cond_2b
    add-int/lit8 v0, v15, 0x1

    .line 26762
    aget-object v0, v7, v0

    invoke-virtual {v0}, Landroid/animation/Keyframe;->getFraction()F

    move-result v0

    add-int/lit8 v12, v8, -0x1

    aget-object v12, v7, v12

    .line 26763
    invoke-virtual {v12}, Landroid/animation/Keyframe;->getFraction()F

    move-result v12

    sub-float/2addr v0, v12

    .line 26764
    invoke-static {v7, v0, v8, v15}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->distributeKeyframes([Landroid/animation/Keyframe;FII)V

    goto :goto_24

    :cond_2c
    :goto_23
    move/from16 v17, v15

    :goto_24
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v0, p1

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_21

    .line 26768
    :cond_2d
    invoke-static {v11, v7}, Landroid/animation/PropertyValuesHolder;->ofKeyframe(Ljava/lang/String;[Landroid/animation/Keyframe;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    const/4 v0, 0x3

    if-ne v14, v0, :cond_2f

    .line 26770
    invoke-static {}, Landroid/support/graphics/drawable/ArgbEvaluator;->getInstance()Landroid/support/graphics/drawable/ArgbEvaluator;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/animation/PropertyValuesHolder;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    goto :goto_25

    :cond_2e
    const/4 v4, 0x0

    :cond_2f
    :goto_25
    if-nez v4, :cond_30

    const/4 v0, 0x1

    const/4 v7, 0x0

    .line 601
    invoke-static {v6, v10, v7, v0, v11}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    :cond_30
    if-eqz v4, :cond_32

    if-nez v5, :cond_31

    .line 608
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 610
    :cond_31
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 612
    :cond_32
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_26

    :cond_33
    move-object/from16 v9, p0

    .line 615
    :goto_26
    invoke-interface/range {p3 .. p3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-object/from16 v0, p1

    goto/16 :goto_0

    :cond_34
    move v7, v8

    if-eqz v5, :cond_36

    .line 620
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 621
    new-array v4, v0, [Landroid/animation/PropertyValuesHolder;

    :goto_27
    if-ge v7, v0, :cond_35

    .line 623
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/PropertyValuesHolder;

    aput-object v1, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_27

    :cond_35
    move-object/from16 v16, v4

    goto :goto_28

    :cond_36
    const/16 v16, 0x0

    :goto_28
    return-object v16

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static parseAnimatorFromTypeArray(Landroid/animation/ValueAnimator;Landroid/content/res/TypedArray;Landroid/content/res/TypedArray;FLorg/xmlpull/v1/XmlPullParser;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    const-string v4, "duration"

    const-string v5, "http://schemas.android.com/apk/res/android"

    .line 7056
    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const/16 v7, 0x12c

    if-nez v4, :cond_1

    goto :goto_1

    .line 6106
    :cond_1
    invoke-virtual {v1, v5, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    :goto_1
    int-to-long v7, v7

    const-string v4, "startOffset"

    const-string v9, "http://schemas.android.com/apk/res/android"

    .line 8056
    invoke-interface {v3, v9, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :cond_2
    move v4, v6

    :goto_2
    const/4 v9, 0x2

    if-nez v4, :cond_3

    move v4, v6

    goto :goto_3

    .line 7106
    :cond_3
    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    :goto_3
    int-to-long v10, v4

    const-string v4, "valueType"

    const-string v12, "http://schemas.android.com/apk/res/android"

    .line 9056
    invoke-interface {v3, v12, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    move v4, v5

    goto :goto_4

    :cond_4
    move v4, v6

    :goto_4
    const/4 v12, 0x4

    if-nez v4, :cond_5

    move v4, v12

    goto :goto_5

    :cond_5
    const/4 v4, 0x7

    .line 8106
    invoke-virtual {v1, v4, v12}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    :goto_5
    const-string v13, "valueFrom"

    const-string v14, "http://schemas.android.com/apk/res/android"

    .line 10056
    invoke-interface {v3, v14, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_6

    move v13, v5

    goto :goto_6

    :cond_6
    move v13, v6

    :goto_6
    if-eqz v13, :cond_12

    const-string v13, "valueTo"

    const-string v15, "http://schemas.android.com/apk/res/android"

    .line 11056
    invoke-interface {v3, v15, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    move v13, v5

    goto :goto_7

    :cond_7
    move v13, v6

    :goto_7
    if-eqz v13, :cond_12

    const/4 v13, 0x6

    const/4 v15, 0x5

    if-ne v4, v12, :cond_11

    .line 11654
    invoke-virtual {v1, v15}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    if-eqz v4, :cond_8

    move/from16 v16, v5

    goto :goto_8

    :cond_8
    move/from16 v16, v6

    :goto_8
    if-eqz v16, :cond_9

    .line 11656
    iget v4, v4, Landroid/util/TypedValue;->type:I

    goto :goto_9

    :cond_9
    move v4, v6

    .line 11657
    :goto_9
    invoke-virtual {v1, v13}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v9

    if-eqz v9, :cond_a

    move/from16 v17, v5

    goto :goto_a

    :cond_a
    move/from16 v17, v6

    :goto_a
    if-eqz v17, :cond_b

    .line 11659
    iget v9, v9, Landroid/util/TypedValue;->type:I

    goto :goto_b

    :cond_b
    move v9, v6

    :goto_b
    const/16 v12, 0x1f

    const/16 v14, 0x1c

    if-eqz v16, :cond_d

    if-lt v4, v14, :cond_c

    if-gt v4, v12, :cond_c

    move v4, v5

    goto :goto_c

    :cond_c
    move v4, v6

    :goto_c
    if-nez v4, :cond_f

    :cond_d
    if-eqz v17, :cond_10

    if-lt v9, v14, :cond_e

    if-gt v9, v12, :cond_e

    move v4, v5

    goto :goto_d

    :cond_e
    move v4, v6

    :goto_d
    if-eqz v4, :cond_10

    :cond_f
    const/4 v4, 0x3

    goto :goto_e

    :cond_10
    move v4, v6

    :cond_11
    :goto_e
    const-string v9, ""

    .line 359
    invoke-static {v1, v4, v15, v13, v9}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->getPVH(Landroid/content/res/TypedArray;IIILjava/lang/String;)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 363
    new-array v9, v5, [Landroid/animation/PropertyValuesHolder;

    aput-object v4, v9, v6

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 366
    :cond_12
    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 367
    invoke-virtual {v0, v10, v11}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-string v4, "repeatCount"

    const-string v7, "http://schemas.android.com/apk/res/android"

    .line 14056
    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_13

    move v4, v5

    goto :goto_f

    :cond_13
    move v4, v6

    :goto_f
    if-nez v4, :cond_14

    move v7, v6

    goto :goto_10

    :cond_14
    const/4 v4, 0x3

    .line 13106
    invoke-virtual {v1, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    .line 369
    :goto_10
    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    const-string v4, "repeatMode"

    const-string v7, "http://schemas.android.com/apk/res/android"

    .line 15056
    invoke-interface {v3, v7, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_15

    move v4, v5

    goto :goto_11

    :cond_15
    move v4, v6

    :goto_11
    if-nez v4, :cond_16

    move v1, v5

    goto :goto_12

    :cond_16
    const/4 v4, 0x4

    .line 14106
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 371
    :goto_12
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    if-eqz v2, :cond_21

    .line 15389
    check-cast v0, Landroid/animation/ObjectAnimator;

    const-string v1, "pathData"

    const-string v4, "http://schemas.android.com/apk/res/android"

    .line 17056
    invoke-interface {v3, v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    move v1, v5

    goto :goto_13

    :cond_17
    move v1, v6

    :goto_13
    const/4 v4, 0x0

    if-nez v1, :cond_18

    move-object v1, v4

    goto :goto_14

    .line 16160
    :cond_18
    invoke-virtual {v2, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_14
    if-eqz v1, :cond_1e

    const-string v7, "propertyXName"

    const-string v8, "http://schemas.android.com/apk/res/android"

    .line 18056
    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_19

    move v7, v5

    goto :goto_15

    :cond_19
    move v7, v6

    :goto_15
    if-nez v7, :cond_1a

    move-object v7, v4

    goto :goto_16

    :cond_1a
    const/4 v7, 0x2

    .line 17160
    invoke-virtual {v2, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_16
    const-string v8, "propertyYName"

    const-string v9, "http://schemas.android.com/apk/res/android"

    .line 19056
    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    goto :goto_17

    :cond_1b
    move v5, v6

    :goto_17
    if-nez v5, :cond_1c

    goto :goto_18

    :cond_1c
    const/4 v3, 0x3

    .line 18160
    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    :goto_18
    if-nez v7, :cond_1d

    if-nez v4, :cond_1d

    .line 15414
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " propertyXName or propertyYName is needed for PathData"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15417
    :cond_1d
    invoke-static {v1}, Landroid/support/v4/graphics/PathParser;->createPathFromPathData(Ljava/lang/String;)Landroid/graphics/Path;

    move-result-object v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float v2, v2, p3

    .line 15418
    invoke-static {v1, v0, v2, v7, v4}, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1e
    const-string v1, "propertyName"

    const-string v7, "http://schemas.android.com/apk/res/android"

    .line 20056
    invoke-interface {v3, v7, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1f

    goto :goto_19

    :cond_1f
    move v5, v6

    :goto_19
    if-nez v5, :cond_20

    goto :goto_1a

    .line 19160
    :cond_20
    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 15424
    :goto_1a
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method private static setupPathMotion(Landroid/graphics/Path;Landroid/animation/ObjectAnimator;FLjava/lang/String;Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    .line 435
    new-instance v4, Landroid/graphics/PathMeasure;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    .line 439
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    .line 440
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v8, v7

    .line 442
    :cond_0
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    add-float/2addr v8, v9

    .line 444
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 446
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v9

    if-nez v9, :cond_0

    .line 449
    new-instance v4, Landroid/graphics/PathMeasure;

    invoke-direct {v4, v0, v5}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/16 v0, 0x64

    div-float v9, v8, p2

    float-to-int v9, v9

    const/4 v10, 0x1

    add-int/2addr v9, v10

    .line 451
    invoke-static {v0, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 453
    new-array v9, v0, [F

    .line 454
    new-array v11, v0, [F

    const/4 v12, 0x2

    .line 455
    new-array v13, v12, [F

    add-int/lit8 v14, v0, -0x1

    int-to-float v14, v14

    div-float/2addr v8, v14

    move v15, v5

    move v14, v7

    move v7, v15

    :goto_0
    const/4 v12, 0x0

    if-ge v7, v0, :cond_2

    .line 465
    invoke-virtual {v4, v14, v13, v12}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    .line 467
    aget v12, v13, v5

    aput v12, v9, v7

    .line 468
    aget v12, v13, v10

    aput v12, v11, v7

    add-float/2addr v14, v8

    add-int/lit8 v12, v15, 0x1

    .line 470
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v12, v5, :cond_1

    .line 471
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    cmpl-float v5, v14, v5

    if-lez v5, :cond_1

    .line 472
    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v14, v5

    .line 474
    invoke-virtual {v4}, Landroid/graphics/PathMeasure;->nextContour()Z

    move v15, v12

    :cond_1
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    .line 482
    invoke-static {v2, v9}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v12

    :goto_1
    if-eqz v3, :cond_4

    .line 485
    invoke-static {v3, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v12

    :cond_4
    if-nez v0, :cond_5

    .line 488
    new-array v0, v10, [Landroid/animation/PropertyValuesHolder;

    const/4 v5, 0x0

    aput-object v12, v0, v5

    invoke-virtual {v1, v0}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void

    :cond_5
    const/4 v5, 0x0

    if-nez v12, :cond_6

    .line 490
    new-array v2, v10, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void

    :cond_6
    const/4 v2, 0x2

    .line 492
    new-array v2, v2, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v5

    aput-object v12, v2, v10

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic decode(Ljava/lang/Object;II)Lcom/bumptech/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44019
    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 44045
    iget-object p2, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->bitmapDecoder:Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/load/resource/bitmap/VideoBitmapDecoder;->decode$5e836846(Landroid/os/ParcelFileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 44046
    iget-object p2, p0, Landroid/support/graphics/drawable/AnimatorInflaterCompat;->bitmapPool:Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 45027
    :cond_0
    new-instance p3, Landroid/support/coreui/R$style;

    invoke-direct {p3, p1, p2}, Landroid/support/coreui/R$style;-><init>(Landroid/graphics/Bitmap;Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)V

    return-object p3
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    const-string v0, "FileDescriptorBitmapDecoder.com.bumptech.glide.load.data.bitmap"

    return-object v0
.end method
