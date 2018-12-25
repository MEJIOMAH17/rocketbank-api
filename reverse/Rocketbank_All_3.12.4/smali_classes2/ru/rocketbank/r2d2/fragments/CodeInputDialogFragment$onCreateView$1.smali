.class final Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$1;
.super Ljava/lang/Object;
.source "CodeInputDialogFragment.kt"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodeInputDialogFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CodeInputDialogFragment.kt\nru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$1\n*L\n1#1,482:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCode(Ljava/lang/String;)V
    .locals 2

    .line 91
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    .line 93
    :try_start_0
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$onCreateView$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->access$requestLogin(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 95
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-void
.end method
