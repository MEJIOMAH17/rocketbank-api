.class final Lru/rocketbank/core/widgets/RocketTextInputLayout$1;
.super Ljava/lang/Object;
.source "RocketTextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/widgets/RocketTextInputLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$1;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$1;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$100$302e4a86(Lru/rocketbank/core/widgets/RocketTextInputLayout;)V

    .line 215
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$1;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-static {v0}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$200(Lru/rocketbank/core/widgets/RocketTextInputLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lru/rocketbank/core/widgets/RocketTextInputLayout$1;->this$0:Lru/rocketbank/core/widgets/RocketTextInputLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-static {v0, p1}, Lru/rocketbank/core/widgets/RocketTextInputLayout;->access$300(Lru/rocketbank/core/widgets/RocketTextInputLayout;I)V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
