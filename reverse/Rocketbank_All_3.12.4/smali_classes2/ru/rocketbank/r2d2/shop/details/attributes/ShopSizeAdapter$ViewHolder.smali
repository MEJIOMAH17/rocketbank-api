.class public final Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ShopSizeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ViewHolder"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    return-void
.end method


# virtual methods
.method public final bind(Lru/rocketbank/core/model/shop/Size;ZLkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lru/rocketbank/core/model/shop/Size;",
            "Z",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "size"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Size;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->setText(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 41
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    const-string v1, "binding.button"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lru/rocketbank/core/widgets/RocketRadioButton;->setChecked(Z)V

    .line 42
    iget-object p2, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    iget-object p2, p2, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    const-string v0, "binding.button"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lru/rocketbank/core/model/shop/Size;->getAvailable()Z

    move-result p1

    invoke-virtual {p2, p1}, Lru/rocketbank/core/widgets/RocketRadioButton;->setEnabled(Z)V

    .line 43
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;->button:Lru/rocketbank/core/widgets/RocketRadioButton;

    new-instance p2, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder$bind$1;

    invoke-direct {p2, p3}, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder$bind$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast p2, Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/core/widgets/RocketRadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public final getBinding()Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;
    .locals 1

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopSizeAdapter$ViewHolder;->binding:Lru/rocketbank/r2d2/databinding/RadioButtonOrangeBinding;

    return-object v0
.end method
