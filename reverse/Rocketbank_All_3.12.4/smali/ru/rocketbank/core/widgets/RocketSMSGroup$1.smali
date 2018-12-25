.class final Lru/rocketbank/core/widgets/RocketSMSGroup$1;
.super Ljava/lang/Object;
.source "RocketSMSGroup.java"

# interfaces
.implements Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;


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

    .line 44
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$1;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCode(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$1;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->access$000(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketSMSInput;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/widgets/RocketSMSInput;->disableSmsInput()V

    .line 50
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$1;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->access$100(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketSMSGroup$1;->this$0:Lru/rocketbank/core/widgets/RocketSMSGroup;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketSMSGroup;->access$100(Lru/rocketbank/core/widgets/RocketSMSGroup;)Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lru/rocketbank/core/widgets/RocketSMSInput$OnCodeInputListener;->onCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
