.class final Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$2;
.super Ljava/lang/Object;
.source "InputPhoneNumberFragment.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$2;->call(Ljava/lang/Integer;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/Integer;)Z
    .locals 0

    .line 70
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$onCreateView$2;->this$0:Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->access$validate(Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;)Z

    move-result p1

    return p1
.end method
