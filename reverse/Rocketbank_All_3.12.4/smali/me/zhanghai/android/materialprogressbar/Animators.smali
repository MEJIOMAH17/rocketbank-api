.class Lme/zhanghai/android/materialprogressbar/Animators;
.super Ljava/lang/Object;
.source "Animators.java"


# static fields
.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

.field private static final PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 28
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 29
    sput-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    const/4 v1, 0x0

    const v2, -0x3bfd599a    # -522.6f

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 30
    sget-object v3, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    const v4, 0x42439950

    const/4 v5, 0x0

    const v6, 0x432606cd

    const/4 v7, 0x0

    const v8, 0x43969bd0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 32
    sget-object v10, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    const v11, 0x434594cf

    const/4 v12, 0x0

    const v13, 0x43d27dc9

    const/4 v14, 0x0

    const v15, 0x43d27dc9

    const/16 v16, 0x0

    invoke-virtual/range {v10 .. v16}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 41
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 42
    sput-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 43
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3f53ac64

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 44
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 53
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 54
    sput-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const v5, -0x3cba6666    # -197.6f

    invoke-virtual {v0, v5, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 55
    sget-object v6, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const v7, 0x41648256

    const/4 v8, 0x0

    const v9, 0x42aa27d8

    const/4 v10, 0x0

    const v11, 0x43078c01

    invoke-virtual/range {v6 .. v12}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 57
    sget-object v13, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const v14, 0x42590c32

    const/4 v15, 0x0

    const v16, 0x42b4d966

    const/16 v17, 0x0

    const v18, 0x43283e4a

    const/16 v19, 0x0

    invoke-virtual/range {v13 .. v19}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 59
    sget-object v5, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const v6, 0x4310b8b7

    const/4 v7, 0x0

    const v8, 0x439e3475

    const/4 v9, 0x0

    const v10, 0x439e3475

    const/4 v11, 0x0

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 70
    sput-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 71
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    const v1, 0x3f1245ed

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 72
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    const v1, 0x3f68f280

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 73
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    const/high16 v1, 0x40400000    # 3.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createIndeterminate(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 8

    const-string v0, "trimPathStart"

    const/4 v1, 0x2

    .line 140
    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x535

    .line 142
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 143
    sget-object v4, Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_START;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v4, -0x1

    .line 144
    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-string v5, "trimPathEnd"

    .line 146
    new-array v6, v1, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 148
    invoke-virtual {v5, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 149
    sget-object v6, Lme/zhanghai/android/materialprogressbar/Interpolators$TRIM_PATH_END;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 150
    invoke-virtual {v5, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-string v6, "trimPathOffset"

    .line 152
    new-array v7, v1, [F

    fill-array-data v7, :array_2

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 154
    invoke-virtual {p0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 155
    sget-object v2, Lme/zhanghai/android/materialprogressbar/Interpolators$LINEAR;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 156
    invoke-virtual {p0, v4}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 158
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v3, 0x3

    .line 159
    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v5, v3, v0

    aput-object p0, v3, v1

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v2

    :array_0
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f400000    # 0.75f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3e800000    # 0.25f
    .end array-data
.end method

.method public static createIndeterminateHorizontalRect1(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 7

    const-string v0, "translateX"

    .line 85
    sget-object v1, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    .line 87
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 88
    sget-object v1, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT1_TRANSLATE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, -0x1

    .line 90
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-string v5, "scaleX"

    .line 92
    sget-object v6, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT1_SCALE_X:Landroid/graphics/Path;

    invoke-static {p0, v2, v5, v6}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 94
    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 95
    sget-object v2, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT1_SCALE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 97
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 99
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 100
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1
.end method

.method public static createIndeterminateHorizontalRect2(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 7

    const-string v0, "translateX"

    .line 113
    sget-object v1, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X:Landroid/graphics/Path;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    .line 115
    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 116
    sget-object v1, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT2_TRANSLATE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v1, -0x1

    .line 118
    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    const-string v5, "scaleX"

    .line 120
    sget-object v6, Lme/zhanghai/android/materialprogressbar/Animators;->PATH_INDETERMINATE_HORIZONTAL_RECT2_SCALE_X:Landroid/graphics/Path;

    invoke-static {p0, v2, v5, v6}, Lme/zhanghai/android/materialprogressbar/internal/ObjectAnimatorCompat;->ofFloat(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Path;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 122
    invoke-virtual {p0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 123
    sget-object v2, Lme/zhanghai/android/materialprogressbar/Interpolators$INDETERMINATE_HORIZONTAL_RECT2_SCALE_X;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    invoke-virtual {p0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    .line 127
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v2, 0x2

    .line 128
    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object p0, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v1
.end method

.method public static createIndeterminateRotation(Ljava/lang/Object;)Landroid/animation/Animator;
    .locals 2

    const-string v0, "rotation"

    const/4 v1, 0x2

    .line 172
    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x1a09

    .line 173
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 174
    sget-object v0, Lme/zhanghai/android/materialprogressbar/Interpolators$LINEAR;->INSTANCE:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v0, -0x1

    .line 175
    invoke-virtual {p0, v0}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x44340000    # 720.0f
    .end array-data
.end method
