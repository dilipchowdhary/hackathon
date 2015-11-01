curl -XGET 'http://113.128.165.18:9200/testhack/hack/_search?pretty=true&size=-1'  -d '{
  "query": {
    "match_all": {}
  },
  "aggs": {
    "group_by_CustomerID": {
      "terms": {
        "field": "CustomerID",
        "size": 50000,
        "order": {
          "sum_bar": "desc"
        }
      },
      "aggs": {
        "sum_bar": {
          "sum": {
            "field": "usage"
          }
        }
      }
    }
  }
}' > sort.txt

grep "key" sort.txt > key_cut.txt
grep '"value" :' sort.txt > sum_usagr.txt
paste key_cut.txt sum_usagr.txt > output.txt
