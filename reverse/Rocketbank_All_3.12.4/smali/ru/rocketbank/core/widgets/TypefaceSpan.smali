.class public Lru/rocketbank/core/widgets/TypefaceSpan;
.super Landroid/text/style/CharacterStyle;
.source "TypefaceSpan.java"

# interfaces
.implements Landroid/text/ParcelableSpan;
.implements Landroid/text/style/UpdateAppearance;


# instance fields
.field private textSize:I

.field private typeface:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 16
    iput-object p1, p0, Lru/rocketbank/core/widgets/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    .line 17
    iput p2, p0, Lru/rocketbank/core/widgets/TypefaceSpan;->textSize:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSpanTypeId()I
    .locals 1

    .line 24
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TypefaceSpan;->getSpanTypeIdInternal()I

    move-result v0

    return v0
.end method

.method public getSpanTypeIdInternal()I
    .locals 1

    const v0, -0xefff000

    return v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lru/rocketbank/core/widgets/TypefaceSpan;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 46
    iget v0, p0, Lru/rocketbank/core/widgets/TypefaceSpan;->textSize:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/core/widgets/TypefaceSpan;->writeToParcelInternal(Landroid/os/Parcel;I)V

    return-void
.end method

.method public writeToParcelInternal(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
