.class final Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$bottomButtonClicked$1;
.super Lkotlin/jvm/internal/FunctionReference;
.source "OnButtonsClickListener.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$DefaultImpls;->bottomButtonClicked(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReference;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lkotlin/jvm/internal/FunctionReference;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    const-string v0, "onBottomButtonClicked"

    return-object v0
.end method

.method public final getOwner()Lkotlin/reflect/KDeclarationContainer;
    .locals 1

    const-class v0, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v0

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    const-string v0, "onBottomButtonClicked()V"

    return-object v0
.end method

.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-virtual {p0}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$bottomButtonClicked$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener$bottomButtonClicked$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;

    .line 19
    invoke-interface {v0}, Lru/rocketbank/r2d2/registration/new_passport/OnButtonsClickListener;->onBottomButtonClicked()V

    return-void
.end method
