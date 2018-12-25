.class public Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/activities/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field currencyBlock:Landroid/view/View;

.field eur:Landroid/widget/TextView;

.field url:Landroid/widget/TextView;

.field usd:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 1458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f090117

    .line 1459
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->currencyBlock:Landroid/view/View;

    const v0, 0x7f0903fb

    .line 1460
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->usd:Landroid/widget/TextView;

    const v0, 0x7f090169

    .line 1461
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->eur:Landroid/widget/TextView;

    const v0, 0x7f0903fa

    .line 1462
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$HeaderViewHolder;->url:Landroid/widget/TextView;

    return-void
.end method
