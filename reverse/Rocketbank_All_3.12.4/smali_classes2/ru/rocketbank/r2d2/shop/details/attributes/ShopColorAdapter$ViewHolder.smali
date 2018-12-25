.class public final Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShopColorAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/model/shop/Color;ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/shop/Color;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->setColor(Lru/rocketbank/core/model/shop/Color;)V

    .line 52
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    const-string v1, "binding.button"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lru/rocketbank/core/widgets/RocketRadioButton;->setChecked(Z)V

    .line 54
    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Color;->getColorInt()I

    move-result p1

    invoke-static {p1}, Landroid/arch/lifecycle/MethodCallsLogger;->isSuperLightColor(I)Z

    move-result p1

    .line 55
    iget-object p2, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    if-eqz p1, :cond_0

    const v0, 0x7f080084

    goto :goto_0

    :cond_0
    const v0, 0x7f080083

    :goto_0
    invoke-virtual {p2, v0}, Lru/rocketbank/core/widgets/RocketRadioButton;->setBackgroundResource(I)V

    .line 56
    iget-object p2, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->corner:Landroid/widget/ImageView;

    const-string v0, "binding.corner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    const/16 p1, 0x8

    :goto_1
    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 57
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    new-instance p2, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder$bind$1;

    invoke-direct {p2, p3}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder$bind$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;
    .locals 1

    .line 49
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonColorBinding;

    return-object v0
.end method
