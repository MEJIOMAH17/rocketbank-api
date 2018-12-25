.class final Lru/rocketbank/core/widgets/RocketSMSGroup$2;
.super Ljava/lang/Object;
.source "RocketSMSGroup.java"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketNumpad$OnNumberListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/RocketSMSGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketSMSGroup;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$2;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClear()V
    .locals 2

    .line 86
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$2;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->regroup()V

    .line 87
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$2;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->access$200(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketNumpad;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketNumpad;->setEraseEnabled(Z)V

    return-void
.end method

.method public final onNumber(I)V
    .locals 1

    .line 64
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$2;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->access$000(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketSMSInput;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/core/widgets/RocketSMSInput;->appendNumber(I)V

    .line 65
    iget-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$2;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-static {p1}, Lru/rocketbank/core/widgets/RocketSMSGroup;->access$200(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketNumpad;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lru/rocketbank/core/widgets/RocketNumpad;->setEraseEnabled(Z)V

    return-void
.end method

.method public final onReset()V
    .locals 1

    .line 74
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$2;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->access$300(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup$OnCodeResetListener;->onCodeReset()V

    :cond_0
    return-void
.end method
