.class public final Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;
.super Lkotlin/properties/ReadWriteProperty;
.source "Delegates.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/properties/ReadWriteProperty<",
        "Lru/rocketbank/core/model/shop/Color;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 ShopColorAdapter.kt\nru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter\n*L\n1#1,63:1\n22#2,5:64\n*E\n"
.end annotation


# instance fields
.field final synthetic $colors$inlined:Ljava/util/List;

.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;->this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    iput-object p4, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;->$colors$inlined:Ljava/util/List;

    .line 27
    invoke-direct {p0, p2}, Lkotlin/properties/ReadWriteProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Lru/rocketbank/core/model/shop/Color;",
            "Lru/rocketbank/core/model/shop/Color;",
            ")V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    check-cast p3, Lru/rocketbank/core/model/shop/Color;

    check-cast p2, Lru/rocketbank/core/model/shop/Color;

    if-eqz p2, :cond_0

    .line 65
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;->this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;->$colors$inlined:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->notifyItemChanged(I)V

    .line 67
    :cond_0
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$1;->this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    invoke-static {p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->access$getOnCheckChanged$p(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;)Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, p3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
