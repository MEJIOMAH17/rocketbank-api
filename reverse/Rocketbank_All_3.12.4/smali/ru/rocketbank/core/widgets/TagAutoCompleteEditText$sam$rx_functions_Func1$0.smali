.class final Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Func1$0;
.super Ljava/lang/Object;
.source "TagAutoCompleteEditText.kt"

# interfaces
.implements Lrx/functions/Func1;


# instance fields
.field private final synthetic function:Lkotlin/jvm/functions/Function1;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Func1$0;->function:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TR;"
        }
    .end annotation

    iget-object v0, p0, Lru/rocketbank/core/widgets/TagAutoCompleteEditText$sam$rx_functions_Func1$0;->function:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
