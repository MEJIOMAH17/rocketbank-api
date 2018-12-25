.class final Lio/card/payment/Logo;
.super Ljava/lang/Object;
.source "Logo.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mLogo:Landroid/graphics/Bitmap;

.field private final mPaint:Landroid/graphics/Paint;

.field private mUseCardIOLogo:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lio/card/payment/Logo;->mPaint:Landroid/graphics/Paint;

    .line 29
    iget-object v0, p0, Lio/card/payment/Logo;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 30
    iget-object v0, p0, Lio/card/payment/Logo;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    .line 32
    iput-object p1, p0, Lio/card/payment/Logo;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static formatFifteenString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xf

    if-ge v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/16 v2, 0xa

    if-ne v1, v2, :cond_1

    :cond_0
    const/16 v2, 0x20

    .line 2074
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2076
    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2078
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatString(Ljava/lang/String;ZLio/card/payment/CardType;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    .line 1052
    invoke-static {p0}, Lio/card/payment/Logo;->getDigitsOnlyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    if-nez p2, :cond_1

    .line 1057
    invoke-static {p1}, Lio/card/payment/CardType;->fromCardNumber(Ljava/lang/String;)Lio/card/payment/CardType;

    move-result-object p2

    .line 1059
    :cond_1
    invoke-virtual {p2}, Lio/card/payment/CardType;->numberLength()I

    move-result p2

    .line 1060
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, p2, :cond_5

    const/16 v0, 0x10

    if-ne p2, v0, :cond_4

    .line 1082
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    :goto_1
    if-ge p2, v0, :cond_3

    if-eqz p2, :cond_2

    .line 1085
    rem-int/lit8 v1, p2, 0x4

    if-nez v1, :cond_2

    const/16 v1, 0x20

    .line 1086
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1088
    :cond_2
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 1091
    :cond_3
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    const/16 v0, 0xf

    if-ne p2, v0, :cond_5

    .line 1064
    invoke-static {p1}, Lio/card/payment/Logo;->formatFifteenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p0
.end method

.method public static getDateForString(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    .line 2142
    invoke-static {p0}, Lio/card/payment/Logo;->getDigitsOnlyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2143
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 3133
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MMyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    if-ne v0, v2, :cond_1

    .line 3135
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "MMyyyy"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const/4 v2, 0x0

    .line 2146
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setLenient(Z)V

    .line 2147
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v1

    :cond_2
    return-object v1
.end method

.method public static getDigitsOnlyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 4009
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4010
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    const/4 v1, 0x0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-char v3, p0, v1

    .line 4011
    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4012
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4015
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;FF)V
    .locals 5

    .line 49
    iget-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p0, v1}, Lio/card/payment/Logo;->loadLogo(Z)V

    .line 53
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 56
    iget-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    div-float v2, p3, p2

    cmpg-float v2, v2, v0

    if-gez v2, :cond_1

    div-float p2, p3, v0

    goto :goto_0

    :cond_1
    mul-float p3, p2, v0

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    div-float/2addr p3, v0

    .line 68
    iget-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v4, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v1, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v1, Landroid/graphics/RectF;

    neg-float v3, p2

    neg-float v4, p3

    invoke-direct {v1, v3, v4, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object p2, p0, Lio/card/payment/Logo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method final loadLogo(Z)V
    .locals 1

    .line 36
    iget-object v0, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lio/card/payment/Logo;->mUseCardIOLogo:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 40
    :cond_0
    iput-boolean p1, p0, Lio/card/payment/Logo;->mUseCardIOLogo:Z

    if-eqz p1, :cond_1

    .line 42
    iget-object p1, p0, Lio/card/payment/Logo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lio/card/payment/R$drawable;->cio_card_io_logo:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    return-void

    .line 44
    :cond_1
    iget-object p1, p0, Lio/card/payment/Logo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lio/card/payment/R$drawable;->cio_paypal_logo:I

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lio/card/payment/Logo;->mLogo:Landroid/graphics/Bitmap;

    return-void
.end method
