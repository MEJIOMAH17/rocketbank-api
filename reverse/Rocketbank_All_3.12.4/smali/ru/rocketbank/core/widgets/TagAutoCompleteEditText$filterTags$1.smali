.class final Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$1;
.super Ljava/lang/Object;
.source "TagAutoCompleteEditText.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->filterTags(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/TagAutoCompleteEditText;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 40
    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$filterTags$1;->this$0:Lru/rocketbank/core/widgets/TagAutoCompleteEditText;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/TagAutoCompleteEditText;->dismissDropDown()V

    return-void
.end method
