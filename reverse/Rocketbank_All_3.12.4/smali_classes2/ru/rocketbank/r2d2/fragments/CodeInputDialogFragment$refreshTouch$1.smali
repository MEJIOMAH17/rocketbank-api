.class final Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshTouch$1;
.super Ljava/lang/Object;
.source "CodeInputDialogFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshTouch$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 191
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment$refreshTouch$1;->this$0:Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;->access$refreshFingerPrint(Lru/rocketbank/r2d2/fragments/CodeInputDialogFragment;)V

    return-void
.end method
