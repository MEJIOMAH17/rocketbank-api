.class final Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$2;
.super Ljava/lang/Object;
.source "SectionedRecyclerViewAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;->setSections([Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$2;->this$0:Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 121
    check-cast p1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    check-cast p2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;

    .line 1124
    iget v0, p1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->firstPosition:I

    iget v1, p2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->firstPosition:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p1, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->firstPosition:I

    iget p2, p2, Lru/rocketbank/core/widgets/SectionedRecyclerViewAdapter$Section;->firstPosition:I

    if-ge p1, p2, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
