.class public final Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;
.super Landroid/widget/ArrayAdapter;
.source "TagAutoCompleteEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/TagAutoCompleteEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TagAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTagAutoCompleteEditText.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TagAutoCompleteEditText.kt\nru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,187:1\n25#2,2:188\n*E\n*S KotlinDebug\n*F\n+ 1 TagAutoCompleteEditText.kt\nru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter\n*L\n141#1,2:188\n*E\n"
.end annotation


# instance fields
.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

.field private final valueFilter:Landroid/widget/Filter;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    const/4 p1, 0x0

    .line 189
    new-array p1, p1, [Ljava/lang/Object;

    const v0, 0x1090003

    .line 141
    invoke-direct {p0, p2, v0, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 144
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->items:Ljava/util/List;

    .line 163
    new-instance p1, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter$valueFilter$1;

    invoke-direct {p1, p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter$valueFilter$1;-><init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;)V

    check-cast p1, Landroid/widget/Filter;

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->valueFilter:Landroid/widget/Filter;

    return-void
.end method


# virtual methods
.method public final getCount()I
    .locals 1

    .line 153
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getFilter()Landroid/widget/Filter;
    .locals 1

    .line 143
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->valueFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    .line 147
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    if-nez p2, :cond_0

    .line 157
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x1090003

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const-string p3, "LayoutInflater.from(cont\u2026st_item_1, parent, false)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    :cond_0
    iget-object p3, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->items:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const p3, 0x1020014

    .line 159
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast p3, Landroid/widget/TextView;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method

.method public final isEnabled(I)Z
    .locals 0

    .line 150
    iget-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->items:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->items:Ljava/util/List;

    return-void
.end method
