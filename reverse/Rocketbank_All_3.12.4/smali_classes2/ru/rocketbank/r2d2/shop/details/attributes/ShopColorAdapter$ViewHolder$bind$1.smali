.class final Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder$bind$1;
.super Ljava/lang/Object;
.source "ShopColorAdapter.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->bind(Lru/rocketbank/core/model/shop/Color;ZLkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder$bind$1;->$onClick:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder$bind$1;->$onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
