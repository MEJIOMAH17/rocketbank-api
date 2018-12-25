.class final Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$$inlined$run$lambda$1;
.super Ljava/lang/Object;
.source "ChangeCodeFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->init(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $textView$inlined:Lru/rocketbank/core/widgets/RocketTextView;

.field final synthetic $textViewDescription$inlined:Lru/rocketbank/core/widgets/RocketTextView;

.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;Lru/rocketbank/core/widgets/RocketTextView;Lru/rocketbank/core/widgets/RocketTextView;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$$inlined$run$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$$inlined$run$lambda$1;->$textView$inlined:Lru/rocketbank/core/widgets/RocketTextView;

    iput-object p3, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$$inlined$run$lambda$1;->$textViewDescription$inlined:Lru/rocketbank/core/widgets/RocketTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 265
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment$init$$inlined$run$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;->access$getPinView$p(Lru/rocketbank/r2d2/fragments/ChangeCodeFragment;)Lru/rocketbank/core/widgets/RocketPinEntryView;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketPinEntryView;->requestFocus()Z

    return-void
.end method
