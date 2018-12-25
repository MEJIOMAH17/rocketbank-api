.class public final Lru/rocketbank/core/widgets/CalculatorKeyboard;
.super Landroid/widget/FrameLayout;
.source "CalculatorKeyboard.kt"


# instance fields
.field private _$_findViewCache:Ljava/util/HashMap;

.field private final operatorObservable:Lrx/subjects/PublishSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/PublishSubject<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->operatorObservable:Lrx/subjects/PublishSubject;

    .line 20
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->init$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->operatorObservable:Lrx/subjects/PublishSubject;

    .line 24
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->init$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->operatorObservable:Lrx/subjects/PublishSubject;

    .line 28
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->init$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attrs"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 17
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->operatorObservable:Lrx/subjects/PublishSubject;

    .line 33
    invoke-direct {p0, p1}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->init$51fe1fdb(Landroid/content/Context;)V

    return-void
.end method

.method private _$_findCachedViewById$7529eef0()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->_$_findViewCache:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->_$_findViewCache:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->_$_findViewCache:Ljava/util/HashMap;

    const v1, 0x7f090208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->_$_findViewCache:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public static final synthetic access$getOperatorObservable$p(Lru/rocketbank/core/widgets/CalculatorKeyboard;)Lrx/subjects/PublishSubject;
    .locals 0

    .line 15
    iget-object p0, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->operatorObservable:Lrx/subjects/PublishSubject;

    return-object p0
.end method

.method private final init$51fe1fdb(Landroid/content/Context;)V
    .locals 5

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->getContext()Landroid/content/Context;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f0c007b

    invoke-static {v0, v2, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string v0, "layout_inflater"

    .line 38
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type android.view.LayoutInflater"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Landroid/view/LayoutInflater;

    .line 39
    sget-object v0, Lru/rocketbank/core/utils/MathEval;->MATH_OPERATORS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    const v2, 0x7f0c007a

    .line 40
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->_$_findCachedViewById$7529eef0()Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.core.widgets.RocketButton"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    check-cast v2, Lru/rocketbank/core/widgets/RocketButton;

    .line 41
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketButton;->setText(Ljava/lang/CharSequence;)V

    .line 42
    new-instance v3, Lru/rocketbank/core/widgets/CalculatorKeyboard$init$1;

    invoke-direct {v3, p0, v1}, Lru/rocketbank/core/widgets/CalculatorKeyboard$init$1;-><init>(Lru/rocketbank/core/widgets/CalculatorKeyboard;Ljava/lang/Character;)V

    check-cast v3, Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Lru/rocketbank/core/widgets/RocketButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    invoke-direct {p0}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->_$_findCachedViewById$7529eef0()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final getOperatorObservable()Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/Observable<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard;->operatorObservable:Lrx/subjects/PublishSubject;

    invoke-virtual {v0}, Lrx/subjects/PublishSubject;->onBackpressureBuffer()Lrx/Observable;

    move-result-object v0

    const-string v1, "operatorObservable.onBackpressureBuffer()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
