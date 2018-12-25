.class final Landroid/support/v7/graphics/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final mColors:[I

.field final mFilters:[Landroid/support/v7/graphics/Palette$Filter;

.field final mHistogram:[I

.field final mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field final mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 454
    new-instance v0, Landroid/support/v7/graphics/ColorCutQuantizer$1;

    invoke-direct {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Landroid/support/v7/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>([II[Landroid/support/v7/graphics/Palette$Filter;)V
    .locals 8

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 62
    new-array v1, v0, [F

    iput-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 73
    iput-object p3, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    const p3, 0x8000

    .line 75
    new-array v1, p3, [I

    iput-object v1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mHistogram:[I

    const/4 v2, 0x0

    move v3, v2

    .line 76
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_0

    .line 77
    aget v4, p1, v3

    .line 1465
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    shr-int/2addr v5, v0

    and-int/lit8 v5, v5, 0x1f

    .line 1466
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v6

    shr-int/2addr v6, v0

    and-int/lit8 v6, v6, 0x1f

    .line 1467
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    shr-int/2addr v4, v0

    and-int/lit8 v4, v4, 0x1f

    shl-int/lit8 v5, v5, 0xa

    shl-int/lit8 v6, v6, 0x5

    or-int/2addr v5, v6

    or-int/2addr v4, v5

    .line 79
    aput v4, p1, v3

    .line 81
    aget v5, v1, v4

    add-int/lit8 v5, v5, 0x1

    aput v5, v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    move v3, p1

    :goto_1
    if-ge p1, p3, :cond_3

    .line 91
    aget v4, v1, p1

    if-lez v4, :cond_1

    shr-int/lit8 v4, p1, 0xa

    and-int/lit8 v4, v4, 0x1f

    shr-int/lit8 v5, p1, 0x5

    and-int/lit8 v5, v5, 0x1f

    and-int/lit8 v6, p1, 0x1f

    shl-int/2addr v4, v0

    and-int/lit16 v4, v4, 0xff

    shl-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v6, v0

    and-int/lit16 v6, v6, 0xff

    .line 5475
    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    .line 4432
    iget-object v5, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v4, v5}, Landroid/support/v4/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 4433
    iget-object v4, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, v4}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor$4870f67d([F)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    aput v2, v1, p1

    .line 95
    :cond_1
    aget v4, v1, p1

    if-lez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 106
    :cond_3
    new-array p1, v3, [I

    iput-object p1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    move v4, v2

    move v5, v4

    :goto_2
    if-ge v4, p3, :cond_5

    .line 109
    aget v6, v1, v4

    if-lez v6, :cond_4

    add-int/lit8 v6, v5, 0x1

    .line 110
    aput v4, p1, v5

    move v5, v6

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-gt v3, p2, :cond_7

    .line 120
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 121
    array-length p2, p1

    :goto_3
    if-ge v2, p2, :cond_6

    aget p3, p1, v2

    .line 122
    iget-object v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v4, Landroid/support/v7/graphics/Palette$Swatch;

    shr-int/lit8 v5, p3, 0xa

    and-int/lit8 v5, v5, 0x1f

    shr-int/lit8 v6, p3, 0x5

    and-int/lit8 v6, v6, 0x1f

    and-int/lit8 v7, p3, 0x1f

    shl-int/2addr v5, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/2addr v6, v0

    and-int/lit16 v6, v6, 0xff

    shl-int/2addr v7, v0

    and-int/lit16 v7, v7, 0xff

    .line 9475
    invoke-static {v5, v6, v7}, Landroid/graphics/Color;->rgb(III)I

    move-result v5

    .line 122
    aget p3, v1, p3

    invoke-direct {v4, v5, p3}, Landroid/support/v7/graphics/Palette$Swatch;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    return-void

    .line 12150
    :cond_7
    new-instance p1, Ljava/util/PriorityQueue;

    sget-object p3, Landroid/support/v7/graphics/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {p1, p2, p3}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 12153
    new-instance p3, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mColors:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p3, p0, v2, v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;-><init>(Landroid/support/v7/graphics/ColorCutQuantizer;II)V

    invoke-virtual {p1, p3}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 12157
    invoke-static {p1, p2}, Landroid/support/v7/graphics/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 12160
    invoke-direct {p0, p1}, Landroid/support/v7/graphics/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 131
    iput-object p1, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-void
.end method

.method static approximateToRgb888(III)I
    .locals 0

    shl-int/lit8 p0, p0, 0x3

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p1, p1, 0x3

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p2, p2, 0x3

    and-int/lit16 p2, p2, 0xff

    .line 475
    invoke-static {p0, p1, p2}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v7/graphics/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .line 196
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 197
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    .line 198
    invoke-virtual {v1}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->getAverageColor()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    .line 12437
    invoke-virtual {v1}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v7/graphics/ColorCutQuantizer;->shouldIgnoreColor$4870f67d([F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 202
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static modifySignificantOctet([IIII)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :goto_0
    :pswitch_0
    if-gt p2, p3, :cond_1

    .line 421
    aget p1, p0, p2

    and-int/lit8 v0, p1, 0x1f

    shl-int/lit8 v0, v0, 0xa

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    shr-int/lit8 p1, p1, 0xa

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    .line 424
    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :goto_1
    :pswitch_1
    if-gt p2, p3, :cond_0

    .line 412
    aget p1, p0, p2

    shr-int/lit8 v0, p1, 0x5

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0xa

    shr-int/lit8 v1, p1, 0xa

    and-int/lit8 v1, v1, 0x1f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    and-int/lit8 p1, p1, 0x1f

    or-int/2addr p1, v0

    .line 415
    aput p1, p0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    return-void

    :pswitch_2
    return-void

    :cond_1
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static quantizedBlue(I)I
    .locals 0

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static quantizedGreen(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x5

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method static quantizedRed(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0xa

    and-int/lit8 p0, p0, 0x1f

    return p0
.end method

.method private shouldIgnoreColor$4870f67d([F)Z
    .locals 4

    .line 441
    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 442
    iget-object v0, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    array-length v0, v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 443
    iget-object v3, p0, Landroid/support/v7/graphics/ColorCutQuantizer;->mFilters:[Landroid/support/v7/graphics/Palette$Filter;

    aget-object v3, v3, v2

    invoke-interface {v3, p1}, Landroid/support/v7/graphics/Palette$Filter;->isAllowed$4870f67d([F)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private static splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue<",
            "Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .line 173
    :goto_0
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->size()I

    move-result v0

    if-ge v0, p1, :cond_1

    .line 174
    invoke-virtual {p0}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;->splitBox()Landroid/support/v7/graphics/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 184
    invoke-virtual {p0, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    return-void
.end method
