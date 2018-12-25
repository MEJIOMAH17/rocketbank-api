.class public Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;
.super Ljava/lang/Object;
.source "PatternFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/utils/PatternFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FormattedString"
.end annotation


# instance fields
.field private clean:Ljava/lang/String;

.field private formatted:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p2, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->clean:Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->formatted:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClean()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->clean:Ljava/lang/String;

    return-object v0
.end method

.method public getFormatted()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->formatted:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lru/rocketbank/r2d2/utils/PatternFormatter$FormattedString;->formatted:Ljava/lang/String;

    return-object v0
.end method
