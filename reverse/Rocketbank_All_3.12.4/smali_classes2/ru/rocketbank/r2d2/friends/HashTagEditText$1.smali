.class Lru/rocketbank/r2d2/friends/HashTagEditText$1;
.super Ljava/lang/Object;
.source "HashTagEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/friends/HashTagEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/friends/HashTagEditText;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/friends/HashTagEditText;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lru/rocketbank/r2d2/friends/HashTagEditText$1;->this$0:Lru/rocketbank/r2d2/friends/HashTagEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 70
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 71
    iget-object v0, p0, Lru/rocketbank/r2d2/friends/HashTagEditText$1;->this$0:Lru/rocketbank/r2d2/friends/HashTagEditText;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/friends/HashTagEditText;->access$000(Lru/rocketbank/r2d2/friends/HashTagEditText;Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
