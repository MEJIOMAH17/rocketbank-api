.class public final Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter$valueFilter$1;
.super Landroid/widget/Filter;
.source "TagAutoCompleteEditText.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;-><init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 163
    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter$valueFilter$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    const-string v0, "resultValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    return-object p1
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    .line 169
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    if-eqz p1, :cond_0

    .line 171
    iget-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter$valueFilter$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 172
    iget-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter$valueFilter$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->getItems()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    :cond_0
    return-object v0
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 178
    iget p1, p2, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-lez p1, :cond_1

    .line 179
    iget-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter$valueFilter$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->notifyDataSetChanged()V

    return-void

    .line 181
    :cond_1
    iget-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter$valueFilter$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;

    invoke-virtual {p1}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$TagAdapter;->notifyDataSetInvalidated()V

    return-void
.end method
