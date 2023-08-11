.class public Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException;
.super Ljava/lang/Exception;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field mType:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;


# direct methods
.method public constructor <init>(Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput-object p1, p0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException;->mType:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    return-void
.end method


# virtual methods
.method public getExceptionType()Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;
    .locals 1

    iget-object v0, p0, Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException;->mType:Lcom/toast/android/analytics/common/results/exceptions/NEAFlatException$NEExceptionType;

    return-object v0
.end method
