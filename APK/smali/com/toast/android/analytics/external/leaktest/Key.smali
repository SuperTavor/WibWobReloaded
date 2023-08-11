.class public Lcom/toast/android/analytics/external/leaktest/Key;
.super Ljava/lang/Object;


# instance fields
.field id:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/toast/android/analytics/external/leaktest/Key;->id:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/external/leaktest/Key;->id:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    return v0
.end method
