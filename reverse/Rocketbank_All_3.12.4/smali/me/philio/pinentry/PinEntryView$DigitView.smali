.class Lme/philio/pinentry/PinEntryView$DigitView;
.super Landroid/widget/TextView;
.source "PinEntryView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lme/philio/pinentry/PinEntryView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DigitView"
.end annotation


# instance fields
.field private paint:Landroid/graphics/Paint;

.field final synthetic this$0:Lme/philio/pinentry/PinEntryView;


# direct methods
.method public constructor <init>(Lme/philio/pinentry/PinEntryView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 417
    invoke-direct {p0, p1, p2, v0}, Lme/philio/pinentry/PinEntryView$DigitView;-><init>(Lme/philio/pinentry/PinEntryView;Landroid/content/Context;B)V

    return-void
.end method

.method private constructor <init>(Lme/philio/pinentry/PinEntryView;Landroid/content/Context;B)V
    .locals 0

    const/4 p3, 0x0

    .line 421
    invoke-direct {p0, p1, p2, p3}, Lme/philio/pinentry/PinEntryView$DigitView;-><init>(Lme/philio/pinentry/PinEntryView;Landroid/content/Context;C)V

    return-void
.end method

.method private constructor <init>(Lme/philio/pinentry/PinEntryView;Landroid/content/Context;C)V
    .locals 1

    .line 424
    iput-object p1, p0, Lme/philio/pinentry/PinEntryView$DigitView;->this$0:Lme/philio/pinentry/PinEntryView;

    const/4 p3, 0x0

    const/4 v0, 0x0

    .line 425
    invoke-direct {p0, p2, p3, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 428
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lme/philio/pinentry/PinEntryView$DigitView;->paint:Landroid/graphics/Paint;

    .line 429
    iget-object p2, p0, Lme/philio/pinentry/PinEntryView$DigitView;->paint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 430
    iget-object p2, p0, Lme/philio/pinentry/PinEntryView$DigitView;->paint:Landroid/graphics/Paint;

    invoke-static {p1}, Lme/philio/pinentry/PinEntryView;->access$600(Lme/philio/pinentry/PinEntryView;)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 435
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 438
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView$DigitView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView$DigitView;->getHeight()I

    move-result v0

    iget-object v1, p0, Lme/philio/pinentry/PinEntryView$DigitView;->this$0:Lme/philio/pinentry/PinEntryView;

    invoke-static {v1}, Lme/philio/pinentry/PinEntryView;->access$700(Lme/philio/pinentry/PinEntryView;)I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v3, v0

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView$DigitView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lme/philio/pinentry/PinEntryView$DigitView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lme/philio/pinentry/PinEntryView$DigitView;->paint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
