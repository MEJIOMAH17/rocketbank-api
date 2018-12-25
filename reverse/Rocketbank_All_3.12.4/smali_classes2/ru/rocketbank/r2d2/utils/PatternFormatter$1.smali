.class final Lru/rocketbank/r2d2/utils/PatternFormatter$1;
.super Ljava/lang/Object;
.source "PatternFormatter.java"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/utils/PatternFormatter;->setup(Lru/rocketbank/core/widgets/RocketEditText;Ljava/lang/String;Lrx/functions/Action1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Ljava/lang/String;",
        "Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$pattern:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$1;->val$pattern:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/utils/PatternFormatter$1;->call(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    move-result-object p1

    return-object p1
.end method

.method public final call(Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;
    .locals 1

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$1;->val$pattern:Ljava/lang/String;

    invoke-static {p1, v0}, Lru/rocketbank/r2d2/utils/PatternFormatter;->format(Ljava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;

    move-result-object p1

    return-object p1
.end method
