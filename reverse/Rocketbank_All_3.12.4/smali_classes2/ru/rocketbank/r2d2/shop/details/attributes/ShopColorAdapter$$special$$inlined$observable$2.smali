.class public final Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$2;
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
        "Ljava/util/List<",
        "+",
        "Lru/rocketbank/core/model/shop/Color;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDelegates.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delegates.kt\nkotlin/properties/Delegates$observable$1\n+ 2 ShopColorAdapter.kt\nru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter\n*L\n1#1,63:1\n29#2,4:64\n*E\n"
.end annotation


# instance fields
.field final synthetic $initialValue:Ljava/lang/Object;

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$2;->$initialValue:Ljava/lang/Object;

    iput-object p3, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$2;->this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    .line 27
    invoke-direct {p0, p2}, Lkotlin/properties/ReadWriteProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/KProperty<",
            "*>;",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lru/rocketbank/core/model/shop/Color;",
            ">;)V"
        }
    .end annotation

    const-string p2, "property"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    check-cast p3, Ljava/util/List;

    .line 64
    check-cast p3, Ljava/lang/Iterable;

    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$2;->this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->getSelectedColor()Lru/rocketbank/core/model/shop/Color;

    move-result-object p1

    invoke-static {p3, p1}, Lkotlin/collections/CollectionsKt;->contains(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 65
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$$special$$inlined$observable$2;->this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->setSelectedColor(Lru/rocketbank/core/model/shop/Color;)V

    :cond_0
    return-void
.end method
