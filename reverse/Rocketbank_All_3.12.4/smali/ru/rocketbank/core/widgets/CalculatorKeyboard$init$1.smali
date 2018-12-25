.class final Lru/rocketbank/core/widgets/CalculatorKeyboard$init$1;
.super Ljava/lang/Object;
.source "CalculatorKeyboard.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/CalculatorKeyboard;->init$51fe1fdb(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $operator:Ljava/lang/Character;

.field final synthetic this$0:Lru/rocketbank/core/widgets/CalculatorKeyboard;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/CalculatorKeyboard;Ljava/lang/Character;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard$init$1;->this$0:Lru/rocketbank/core/widgets/CalculatorKeyboard;

    iput-object p2, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard$init$1;->$operator:Ljava/lang/Character;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 42
    iget-object p1, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard$init$1;->this$0:Lru/rocketbank/core/widgets/CalculatorKeyboard;

    invoke-static {p1}, Lru/rocketbank/core/widgets/CalculatorKeyboard;->access$getOperatorObservable$p(Lru/rocketbank/core/widgets/CalculatorKeyboard;)Lrx/subjects/PublishSubject;

    move-result-object p1

    iget-object v0, p0, Lru/rocketbank/core/widgets/CalculatorKeyboard$init$1;->$operator:Ljava/lang/Character;

    invoke-virtual {p1, v0}, Lrx/subjects/PublishSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method
