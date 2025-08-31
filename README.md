pip install grpcio grpcio-tools

python -m grpc_tools.protoc -I. --python_out=. --grpc_python_out=. your_service.proto

docker build -t grpc-python .

docker run -d -p 50051:50051 --name grpc-python grpc-python

