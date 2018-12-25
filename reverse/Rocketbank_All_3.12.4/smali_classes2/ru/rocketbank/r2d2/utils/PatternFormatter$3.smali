.class final Lru/rocketbank/r2d2/utils/PatternFormatter$3;
.super Lru/rocketbank/r2d2/utils/TextWatcherAbstract;
.source "PatternFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lrx/functions/Action1;

.field final synthetic val$editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

.field final synthetic val$stringFilter:Lrx/functions/Func1;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketEditText;Lrx/functions/Func1;Lrx/functions/Action1;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$3;->val$editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    iput-object p2, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$3;->val$stringFilter:Lrx/functions/Func1;

    iput-object p3, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$3;->val$callback:Lrx/functions/Action1;

    invoke-direct {p0}, Lru/rocketbank/r2d2/utils/TextWatcherAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$3;->val$editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {v0, p0}, Lru/rocketbank/core/widgets/RocketEditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 109
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$3;->val$stringFilter:Lrx/functions/Func1;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    .line 110
    iget-object v1, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$3;->val$callback:Lrx/functions/Action1;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$3;->val$callback:Lrx/functions/Action1;

    invoke-interface {v1, v0}, Lrx/functions/Action1;->call(Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x0

    .line 113
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0}, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->getFormatted()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v2, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 114
    iget-object p1, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$3;->val$editTextValue:Lru/rocketbank/core/widgets/RocketEditText;

    invoke-virtual {p1, p0}, Lru/rocketbank/core/widgets/RocketEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
